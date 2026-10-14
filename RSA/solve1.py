from gmpy2 import iroot

# Baca dari file values1
with open('values1', 'r') as f:
    content = f.read()

# Parse N, e, c dari file
# Format file: ada baris "N:", "e:", "ciphertext (c):"
import re

# Ambil N
n_match = re.search(r'N:\s*(\d+)', content, re.DOTALL)
N = int(n_match.group(1))

# Ambil e
e_match = re.search(r'e:\s*(\d+)', content)
e = int(e_match.group(1))

# Ambil c
c_match = re.search(r'ciphertext \(c\):\s*(\d+)', content, re.DOTALL)
c = int(c_match.group(1))

print(f"[*] N = {N}")
print(f"[*] e = {e}")
print(f"[*] c = {c}")
print()

# Small exponent attack: c = M^e mod N
# Karena M^e sedikit lebih besar dari N, maka M^e = k*N + c
# Coba k = 0, 1, 2, ..., beberapa nilai
for k in range(0, 10000):
    m_e = k * N + c
    # Hitung akar pangkat e
    root, exact = iroot(m_e, e)
    if exact:
        # Berhasil! root adalah M
        m = int(root)
        # Konversi ke bytes
        try:
            plaintext = m.to_bytes((m.bit_length() + 7) // 8, 'big')
            print(f"[+] k = {k}")
            print(f"[+] Plaintext (bytes): {plaintext}")
            print(f"[+] Plaintext (str): {plaintext.decode(errors='replace')}")
            break
        except Exception as ex:
            print(f"[!] k = {k} berhasil tapi gagal decode: {ex}")
else:
    print("[!] Tidak ditemukan k dalam range 0-10000")
