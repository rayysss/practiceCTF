import subprocess

# Extract semua paket TFTP dengan data
result = subprocess.run(
    ["tshark", "-r", "tftp.pcapng", "-Y", "tftp.opcode == 3",
     "-T", "fields", "-e", "udp.srcport", "-e", "udp.dstport", "-e", "udp.payload"],
    capture_output=True, text=True
)

# Gabungkan data per (srcport, dstport)
# TFTP: srcport/dstport ephemeral, tapi kita bisa group by srcport
blocks = {}
for line in result.stdout.strip().split("\n"):
    if not line:
        continue
    parts = line.split("\t")
    if len(parts) < 3:
        continue
    srcport, dstport, payload_hex = parts[0], parts[1], parts[2]
    if not payload_hex:
        continue
    key = (srcport, dstport)
    if key not in blocks:
        blocks[key] = []
    # Skip 4 byte header TFTP (opcode + block number)
    data = bytes.fromhex(payload_hex)[4:]
    blocks[key].append(data)

# Simpan setiap file
for i, (key, data_list) in enumerate(blocks.items()):
    filename = f"extracted_{key[0]}_{key[1]}.bin"
    with open(filename, "wb") as f:
        for block in data_list:
            f.write(block)
    total = sum(len(b) for b in data_list)
    print(f"Saved {filename} ({total} bytes)")
