from pathlib import Path
import struct

rodata = Path("rodata.bin").read_bytes()
output = Path("investigation-encoded-2-output").read_bytes()

# Offset relatif terhadap awal section .rodata.
secret = rodata[0x20:0x20 + 71]

bounds = struct.unpack(
    "<38I",
    rodata[0x80:0x80 + 38 * 4]
)

# Membuat rangkaian bit untuk setiap karakter.
alphabet = "abcdefghijklmnopqrstuvwxyz0123456789 "

patterns = {}

for ch in alphabet:
    if ch == " ":
        idx = 36
    elif ch.isdigit():
        idx = ord(ch) - ord("0") + 26
    else:
        idx = ord(ch) - ord("a")

    # Meniru transformasi indeks pada encode.
    j = idx if idx == 36 else (idx + 18) % 36

    start = bounds[j]
    end = bounds[j + 1]

    pattern = "".join(
        str((secret[i // 8] >> (7 - i % 8)) & 1)
        for i in range(start, end)
    )

    patterns[ch] = pattern

# Membaca output dengan urutan MSB-first.
output_bits = "".join(
    f"{byte:08b}" for byte in output
)


def decode_bits(bits, max_paths=100):
    # dp[pos] menyimpan kemungkinan teks sampai posisi bit pos.
    dp = [[] for _ in range(len(bits) + 1)]
    dp[0] = [""]

    for pos in range(len(bits)):
        if not dp[pos]:
            continue

        for ch, pattern in patterns.items():
            if bits.startswith(pattern, pos):
                end = pos + len(pattern)

                for prefix in dp[pos]:
                    if len(dp[end]) < max_paths:
                        dp[end].append(prefix + ch)

    return dp[len(bits)]


# Uji kemungkinan padding 0 sampai 7 bit.
for padding in range(8):
    if padding:
        if not output_bits.endswith("0" * padding):
            continue
        data_bits = output_bits[:-padding]
    else:
        data_bits = output_bits

    candidates = decode_bits(data_bits)

    if candidates:
        print(f"\nPadding: {padding} bit")
        for candidate in candidates[:10]:
            print("Kandidat:", repr(candidate))

