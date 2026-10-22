import struct
import subprocess
from pathlib import Path

BINARY = "investigation-encoded-1-mystery"
OUTPUT = "investigation-encoded-1-output"

# 1. Ekstrak section .rodata dari binary ELF
subprocess.run(
    [
        "objcopy",
        "--dump-section",
        ".rodata=rodata.bin",
        BINARY,
    ],
    check=True,
)

rodata = Path("rodata.bin").read_bytes()
output = Path(OUTPUT).read_bytes()

# 2. Ambil data secret dan ubah menjadi bit
# Offset ini berasal dari alamat simbol secret dan matrix
secret = rodata[0x20:0x60]
secret_bits = "".join(f"{byte:08b}" for byte in secret)

# 3. Ubah seluruh output menjadi rangkaian bit
output_bits = "".join(f"{byte:08b}" for byte in output)

# 4. Baca tabel matrix: panjang bit dan posisi awal setiap karakter
chars = "abcdefghijklmnopqrstuvwxyz{"
matrix = []

for i, char in enumerate(chars):
    length, start = struct.unpack_from(
        "<II", rodata, 0x60 + i * 8
    )
    pattern = secret_bits[start:start + length]
    matrix.append((char, length, start, pattern))

# 5. Cari rangkaian karakter yang menghasilkan seluruh output
# dp[pos] menyimpan semua teks yang cocok sampai posisi bit pos
dp = {0: [""]}

for pos in range(len(output_bits) + 1):
    if pos not in dp:
        continue

    for char, length, start, pattern in matrix:
        end = pos + length

        if end > len(output_bits):
            continue

        if pattern and output_bits[pos:end] == pattern:
            dp.setdefault(end, []).extend(
                text + char for text in dp[pos]
            )

# 6. Tampilkan hasil
results = dp.get(len(output_bits), [])

if results:
    print("[+] Kandidat hasil decoding:")
    for result in results:
        print(result)
else:
    print("[-] Tidak ada hasil yang cocok.")
