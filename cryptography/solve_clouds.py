#!/usr/bin/env python3
"""Chosen-plaintext differential attack for the CyLab/PicoCTF 'Clouds' challenge.

Run from a machine that can reach xebec.cylabacademy.net:26917:
    python3 solve_clouds.py

Uses only the Python standard library. The differential attack was tested against
a simulated Nimbus oracle; the live service connection cannot be tested from this
runtime because external DNS resolution is unavailable here.
"""
from __future__ import annotations

import random
import re
import socket
from collections import Counter
from typing import Optional

HOST = "chatelaine.cylabacademy.net"
PORT = 35296
N = 64
BLOCK_BYTES = 8
MOD = 1 << N
MASK = MOD - 1
MSB = 1 << 63
DELTA = MSB - 2  # 0x7ffffffffffffffe
MAX_ATTEMPTS = 7  # MAX_NOTES=2048; each attempt stores 256 chosen blocks.


class SocketTube:
    """Small pwntools-like wrapper using only Python's standard library."""

    def __init__(self, host: str, port: int):
        self.sock = socket.create_connection((host, port), timeout=15)
        self.sock.settimeout(20)
        self.buffer = bytearray()

    def recvuntil(self, delimiter: bytes) -> bytes:
        while True:
            pos = self.buffer.find(delimiter)
            if pos >= 0:
                end = pos + len(delimiter)
                out = bytes(self.buffer[:end])
                del self.buffer[:end]
                return out
            chunk = self.sock.recv(4096)
            if not chunk:
                raise EOFError("The CTF server closed the connection.")
            self.buffer.extend(chunk)

    def recvline(self) -> bytes:
        return self.recvuntil(b"\n")

    def sendline(self, data: bytes | str) -> None:
        if isinstance(data, str):
            data = data.encode("ascii")
        self.sock.sendall(data + b"\n")

    def sendlineafter(self, delimiter: bytes, data: bytes | str) -> None:
        self.recvuntil(delimiter)
        self.sendline(data)

    def close(self) -> None:
        self.sock.close()


def bit_reverse(x: int) -> int:
    return int(f"{x & MASK:064b}"[::-1], 2)


def toggle_bit(bits: list[str], index: int) -> list[str]:
    out = bits[:]
    out[index] = "1" if out[index] == "0" else "0"
    return out


def create_plaintexts() -> list[list[str]]:
    """Create 128 pairs = 256 8-byte chosen plaintexts (binary strings)."""
    pairs: list[list[str]] = []
    for _ in range(32):
        # The first and last bits are zero, with 62 random middle bits.
        left_bits = ["0"] + [str(random.getrandbits(1)) for _ in range(62)] + ["0"]
        left = "".join(left_bits)
        right_bits = list(f"{int(left, 2) ^ DELTA:064b}")

        pairs.append([left, "".join(right_bits)])

        # Make three related structures by flipping MSB and/or LSB in both.
        left_bits = toggle_bit(left_bits, 0)
        right_bits = toggle_bit(right_bits, 0)
        pairs.append(["".join(left_bits), "".join(right_bits)])

        left_bits = toggle_bit(left_bits, -1)
        right_bits = toggle_bit(right_bits, -1)
        pairs.append(["".join(left_bits), "".join(right_bits)])

        left_bits = toggle_bit(left_bits, 0)
        right_bits = toggle_bit(right_bits, 0)
        pairs.append(["".join(left_bits), "".join(right_bits)])

    assert len(pairs) == 128
    assert all(len(x) == 64 for pair in pairs for x in pair)
    return pairs


def bits_to_hex(bits: str) -> str:
    return "".join(f"{int(bits[i:i + 8], 2):02x}" for i in range(0, 64, 8))


def read_ciphertext_line(io) -> str:
    line = io.recvline().strip().decode("ascii", errors="replace")
    if not re.fullmatch(r"[0-9a-fA-F]+", line):
        raise RuntimeError(f"Expected a hex ciphertext line, received: {line!r}")
    return line.lower()


def get_flag_ciphertext(io) -> str:
    # The challenge stores the encrypted flag as note index 0.
    io.sendlineafter(b"Selection? ", b"2")
    io.sendlineafter(b"What index would you like to read? ", b"0")
    return read_ciphertext_line(io)


def oracle_encrypt(io, msg_hex: str, note_index: int) -> str:
    """Store one 8-byte chosen plaintext, then retrieve its ciphertext."""
    if len(msg_hex) != 16:
        raise ValueError("The oracle input must encode exactly 8 bytes (16 hex chars).")
    io.sendlineafter(b"Selection? ", b"1")
    io.sendlineafter(b"Give me a note to encrypt: ", msg_hex.encode("ascii"))
    io.sendlineafter(b"Selection? ", b"2")
    io.sendlineafter(b"What index would you like to read? ", str(note_index).encode("ascii"))
    return read_ciphertext_line(io)


def get_ciphertexts(io, plaintext_pairs: list[list[str]], first_index: int) -> list[list[str]]:
    ciphertext_pairs: list[list[str]] = []
    index = first_index
    for pair in plaintext_pairs:
        out_pair = []
        for bits in pair:
            out_pair.append(oracle_encrypt(io, bits_to_hex(bits), index))
            index += 1
        ciphertext_pairs.append(out_pair)
    return ciphertext_pairs


def condition1(ciphertexts: list[list[str]]) -> tuple[list[list[str]], list[list[str]]]:
    """Filter likely matching pairs using low ciphertext bits and their mode."""
    precandidates: list[list[str]] = []
    for pair in ciphertexts:
        a, b = (int(v, 16) for v in pair)
        if ((a ^ b) & 0b11) == 0b10 and (a & 1) == 0 and (b & 1) == 0:
            precandidates.append(pair)

    if not precandidates:
        return [], []

    third_lsb = [((int(a, 16) ^ int(b, 16)) >> 2) & 1 for a, b in precandidates]
    ones = sum(third_lsb)
    defining_third_bit = 1 if ones >= len(third_lsb) - ones else 0

    candidates: list[list[str]] = []
    noncandidates: list[list[str]] = []
    for pair in precandidates:
        a, b = (int(v, 16) for v in pair)
        if (((a ^ b) >> 2) & 1) == defining_third_bit:
            candidates.append(pair)
        else:
            noncandidates.append(pair)
    return candidates, noncandidates


def crack_subkey(ciphertexts: list[list[str]]) -> Optional[list[int]]:
    candidates, _ = condition1(ciphertexts)
    votes: Counter[int] = Counter()
    # Since gcd(DELTA, 2^64)=2, solve the congruence modulo 2^63.
    inverse = pow(DELTA // 2, -1, MSB)

    for pair in candidates:
        c1, c2 = (int(v, 16) for v in pair)
        if ((c1 + c2) & 1) or (c1 ^ c2) == DELTA:
            continue
        k_low63 = (((c1 + c2) // 2) * inverse) % MSB
        votes[k_low63] += 1
        votes[k_low63 ^ MSB] += 1  # the top key bit is not revealed by the equation

    if not votes:
        return None
    key_candidate, confidence = votes.most_common(1)[0]
    if confidence <= 1:
        return None

    key_msb_flipped = key_candidate ^ MSB
    # The multiplier uses key|1, but the XOR uses the raw key. Try both LSBs.
    return [key_candidate, key_msb_flipped, key_candidate ^ 1, key_msb_flipped ^ 1]


def partially_decrypt(ciphertext: int, key: int) -> int:
    inverse_multiplier = pow(key | 1, -1, MOD)
    value = (ciphertext * inverse_multiplier) % MOD
    return bit_reverse(value) ^ key


def recurse(
    plaintexts: list[list[str]],
    ciphertexts: list[list[str]],
    key_candidates: list[int],
    depth: int = 1,
) -> Optional[list[int]]:
    """Recover keys from round 5 inward; return keys in forward round order."""
    if depth > 5:
        return None

    for key in key_candidates:
        partially_decrypted: list[list[str]] = []
        for a_hex, b_hex in ciphertexts:
            a = partially_decrypt(int(a_hex, 16), key)
            b = partially_decrypt(int(b_hex, 16), key)
            partially_decrypted.append([f"{a:016x}", f"{b:016x}"])

        # Once five rounds are removed, all known chosen plaintexts must match.
        if all(
            int(partially_decrypted[i][j], 16) == int(plaintexts[i][j], 2)
            for i in range(len(plaintexts))
            for j in range(2)
        ):
            return [key]

        next_candidates = crack_subkey(partially_decrypted)
        if next_candidates is None:
            continue
        tail = recurse(plaintexts, partially_decrypted, next_candidates, depth + 1)
        if tail is not None:
            return tail + [key]
    return None


def decrypt_hex(ciphertext_hex: str, keys: list[int]) -> bytes:
    if len(ciphertext_hex) % 16:
        raise ValueError("Ciphertext length is not a whole number of 64-bit blocks.")
    result = bytearray()
    for offset in range(0, len(ciphertext_hex), 16):
        block = int(ciphertext_hex[offset:offset + 16], 16)
        for key in reversed(keys):
            block = partially_decrypt(block, key) & MASK
        result.extend(block.to_bytes(BLOCK_BYTES, "big"))
    return bytes(result).rstrip(b"\x00")


def main() -> None:
    print(f"[*] Connecting to {HOST}:{PORT}")
    io = SocketTube(HOST, PORT)
    try:
        flag_ct = get_flag_ciphertext(io)
        print(f"[+] Encrypted flag (index 0): {flag_ct}")

        for attempt in range(1, MAX_ATTEMPTS + 1):
            print(f"[*] Chosen-plaintext collection and key recovery: attempt {attempt}/{MAX_ATTEMPTS}")
            plaintexts = create_plaintexts()
            ciphertexts = get_ciphertexts(io, plaintexts, first_index=1 + (attempt - 1) * 256)
            candidates = crack_subkey(ciphertexts)
            if candidates is None:
                print("[-] Not enough agreement for round-5 key; retrying with new plaintexts.")
                continue

            keys = recurse(plaintexts, ciphertexts, candidates)
            if keys is None:
                print("[-] Candidate path did not match all known plaintexts; retrying.")
                continue

            print("[+] Recovered round keys:", ", ".join(f"{k:016x}" for k in keys))
            raw_flag = decrypt_hex(flag_ct, keys)
            print("[+] Decrypted bytes:", raw_flag)
            try:
                print("[+] FLAG:", raw_flag.decode("utf-8"))
            except UnicodeDecodeError:
                print("[!] Output is not UTF-8; inspect the bytes above or try ASCII decoding.")
            return

        raise RuntimeError("All attempts failed. Restart the instance and run the solver again.")
    finally:
        io.close()


if __name__ == "__main__":
    main()
