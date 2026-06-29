

echo "=== Cài gói isc-dhcp-server ==="
apt-get install -y isc-dhcp-server

echo "=== Ghi file cau hình ==="
cat > /etc/dhcp/dhcpd.conf << CONF
default-lease-time 86400;
max-lease-time 172800;
authoritative;

subnet 192.168.10.0 netmask 255.255.255.0 {
    range 192.168.10.100 192.168.10.150;
    option routers 192.168.10.1;
    option subnet-mask 255.255.255.0;
    option domain-name-servers 8.8.8.8, 1.1.1.1;
}
CONF

echo "=== Nội dung file cau hình ==="
cat /etc/dhcp/dhcpd.conf

echo "=== Khoi động dịch vụ ==="
service isc-dhcp-server start
service isc-dhcp-server status
