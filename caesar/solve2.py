import string

ALPHABET = string.ascii_lowercase[:16]   # 'abcdefghijklmnop'
LOWERCASE_OFFSET = ord('a')

def b16_decode(encoded):
    plain = ""
    for i in range(0, len(encoded), 2):
        high = ALPHABET.index(encoded[i])
        low = ALPHABET.index(encoded[i+1])
        plain += chr((high << 4) | low)
    return plain

def unshift(c, k):
    t1 = ord(c) - LOWERCASE_OFFSET
    t2 = ord(k) - LOWERCASE_OFFSET
    return ALPHABET[(t1 - t2) % 16]

# Ciphertext yang BENAR dari halaman challenge
ciphertext = "cbdabldadbplblcnpfpnpapapecpcn"

print(f"Ciphertext: {ciphertext}")
print(f"Panjang: {len(ciphertext)}")
print()

for key in ALPHABET:
    b16 = ""
    for c in ciphertext:
        b16 += unshift(c, key)
    try:
        plain = b16_decode(b16)
        printable = ''.join(ch if 32 <= ord(ch) < 127 else '.' for ch in plain)
        print(f"key={key} → {printable}")
    except Exception as e:
        print(f"key={key} → ERROR: {e}")