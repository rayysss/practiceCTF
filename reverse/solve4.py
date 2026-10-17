x = [
    1096770097,
    1952395366,
    1600270708,
    1601398833,
    1716808014,
    1734293602,
    895574369,
    909534257
]

password = ""
for val in x:
    # Ubah int ke format hex 8 digit, lalu ke bytes (big-endian), lalu ke string
    hex_val = f"{val:08x}"
    password += bytes.fromhex(hex_val).decode('ascii')

print(f"Password: {password}")
