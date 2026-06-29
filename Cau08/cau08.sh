#!/bin/bash
# Câu 8: Thiết lập IP tĩnh 192.168.10.16
# Sinh viên: Vũ Nông Việt Thi - MSSV: 2300716

echo "=== IP hiện tại ==="
ip addr show
route -n

echo "=== Nội dung file cấu hình IP tĩnh (mô phỏng) ==="
echo "TYPE=Ethernet"
echo "BOOTPROTO=none"
echo "NAME=ens33"
echo "DEVICE=ens33"
echo "ONBOOT=yes"
echo "IPADDR=192.168.10.16"
echo "NETMASK=255.255.255.0"
echo "GATEWAY=192.168.10.1"
echo "DNS1=8.8.8.8"

echo "=== Bảng routing ==="
route -n
