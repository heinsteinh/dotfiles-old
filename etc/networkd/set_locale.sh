echo "enable en_US in locale.gen"
sed -i 's/\#en_US/en_US/g' /etc/locale.gen
#echo "enable ru_RU in locale.gen"
#sed -i 's/\#ru_RU/ru_RU/g' /etc/locale.gen

#echo "generate locale"
locale-gen

pacman -S terminus-font

echo "LOCALE='en_US.UTF-8'" > /etc/vconsole.conf
echo "KEYMAP='de-latin1'" >> /etc/vconsole.conf
echo "FONT='ter-v16v'" >> /etc/vconsole.conf
echo "CONSOLEMAP=''" >> /etc/vconsole.conf

