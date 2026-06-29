echo "=== Bảng routing hiện tại ==="
route -n
echo "=== Xuất kết quả vào /root/routing ==="
route -n > /root/routing
cat /root/routing

echo "=== Xem bằng ip route ==="
ip route show

echo "=== Phân tích ==="
echo "Default Gateway: $(route -n | awk '$1=="0.0.0.0"{print $2}')"
echo "Địa chỉ đường mạng: $(route -n | awk '$2=="0.0.0.0" && $1!="0.0.0.0"{print $1}')"
