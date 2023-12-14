from ping3 import ping, verbose_ping

# Ping para um host para medir a latência
host = "200.173.50.101"
latency = ping(host)
print(f"Latência para {host}: {latency} ms")
