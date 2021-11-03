echo "[Match]" > /etc/systemd/network/wired.network
echo "Name=enp0s3" >> /etc/systemd/network/wired.network
echo "" >> /etc/systemd/network/wired.network
echo "[Network]" >> /etc/systemd/network/wired.network
echo "DHCP=ipv4" >> /etc/systemd/network/wired.network
systemctl start systemd-resolved
systemctl start systemd-wetworkd
systemctl enable systemd-resolved
systemctl enable systemd-wetworkd
