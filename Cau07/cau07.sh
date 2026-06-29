#!/bin/bash
# Câu 7: Thay đổi địa chỉ IP theo nhiều cách
# Sinh viên: Vũ Nông Việt Thi - MSSV: 2300716

IFACE=$(ip route | awk '/default/{print $5; exit}')
echo "=== Giao diện mạng: $IFACE ==="
ip addr show $IFACE | grep "inet "

echo "=== Cách 1: ifconfig (tạm thời) ==="
ifconfig $IFACE 192.168.10.100 netmask 255.255.255.0
ifconfig $IFACE | grep "inet "

echo "=== Cách 2: ip addr (tạm thời) ==="
ip addr del 192.168.10.100/24 dev $IFACE 2>/dev/null
ip addr add 192.168.10.200/24 dev $IFACE
ip addr show $IFACE | grep "inet "

echo "=== Cách 3: nmcli (vĩnh viễn) ==="
nmcli con mod $IFACE ipv4.addresses 192.168.10.16/24
nmcli con mod $IFACE ipv4.method manual
nmcli con up $IFACE
ip addr show $IFACE | grep "inet "
