hex_m = "099c2fc19cb8"
m = int(hex_m, 16)
password_int = m // 0x31
password_bytes = password_int.to_bytes((password_int.bit_length() + 7) // 8, 'big')
print(password_bytes)
