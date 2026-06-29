

echo "=== Kiểm tra gói openssh-server ==="
dpkg -l | grep openssh-server

echo "=== Trạng thái dịch vụ ssh ==="
service ssh status

echo "=== Kiểm tra port 22 ==="
ss -tlnp | grep ":22"

echo "=== Cài đặt openssh-server nếu chưa có ==="
apt-get install -y openssh-server

echo "=== Khởi động ssh ==="
service ssh start

echo "=== Kiểm tra lại ==="
service ssh status
ss -tlnp | grep ":22"
