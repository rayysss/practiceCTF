# Array dari Java
myBytes = [
    106, 85, 53, 116, 95, 52, 95, 98,
    0x55, 0x6e, 0x43, 0x68, 0x5f, 0x30, 0x66, 0x5f,
    0o142, 0o131, 0o164, 0o63, 0o163, 0o137, 0o66, 0o141,
    ord('8'), ord('a'), ord('9'), ord('e'), ord('9'), ord('6'), ord('b'), ord('c')
]

# Konversi ke karakter
password = "".join(chr(b) for b in myBytes)
print(f"Password: {password}")
