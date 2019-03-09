systemctl disable systemd-resolved.service
rm /etc/resolv.conf
mv resolv.conf /etc
pacman-key --init && pacman-key --populate archlinuxarm