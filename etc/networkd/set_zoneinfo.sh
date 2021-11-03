echo "set localtime to Europe/Moscow"
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
echo "set hwclock"
hwclock --systohc --utc
