
echo "=== Tìm file ping ==="
which ping
find /bin /sbin /usr -name "ping" 2>/dev/null
ls -lh /bin/ping

echo "=== Ping đến 172.29.8.2 ==="
ping -c 4 172.29.8.2

echo "=== Ping đến 172.29.8.10 ==="
ping -c 4 172.29.8.10
