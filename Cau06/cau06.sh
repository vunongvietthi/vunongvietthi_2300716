#!/bin/bash
echo "=== Hostname ban đầu ==="
hostname

echo "=== Cách 1: dùng lệnh hostname ==="
hostname linux-vunong
hostname

echo "=== Cách 2: dùng hostnamectl ==="
hostnamectl set-hostname svVuNongVietThi
hostnamectl

echo "=== Cách 3: sửa file /etc/hostname ==="
echo "may-thuc-hanh-016" > /etc/hostname
hostname may-thuc-hanh-016
cat /etc/hostname
hostname
