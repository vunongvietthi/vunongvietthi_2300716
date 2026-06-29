
GW=$(route -n | awk '$1=="0.0.0.0"{print $2; exit}')
echo "=== Gateway hiện tại: $GW ==="
route -n

echo "=== Ping TRƯỚC khi xóa ==="
ping -c 3 172.29.8.2

echo "=== Xóa default gateway ==="
route del default gw $GW
route -n

echo "=== Ping SAU khi xóa ==="
ping -c 3 172.29.8.2

echo "=== Thêm lại gateway ==="
route add default gw $GW
route -n

echo "=== Ping SAU khi thêm lại ==="
ping -c 3 172.29.8.2
