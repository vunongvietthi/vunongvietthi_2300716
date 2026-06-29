
NETWORK=$(route -n | awk '$2=="0.0.0.0" && $1!="0.0.0.0"{print $1; exit}')
MASK=$(route -n | awk '$2=="0.0.0.0" && $1!="0.0.0.0"{print $3; exit}')
IFACE=$(route -n | awk '$2=="0.0.0.0" && $1!="0.0.0.0"{print $8; exit}')

echo "=== Đường mạng: $NETWORK | Mask: $MASK | Giao diện: $IFACE ==="
route -n

echo "=== Ping TRƯỚC khi xóa ==="
ping -c 3 172.29.8.2

echo "=== Xóa đường mạng ==="
route del -net $NETWORK netmask $MASK
route -n

echo "=== Ping SAU khi xóa ==="
ping -c 3 172.29.8.2

echo "=== Thêm lại đường mạng ==="
route add -net $NETWORK netmask $MASK dev $IFACE
route -n

echo "=== Ping SAU khi thêm lại ==="
ping -c 3 172.29.8.2
