systemctl disable systemd-resolved.service
rm /etc/resolv.conf
mv resolv.conf /etc
pacman-key --init
echo "disable-scdaemon" > /etc/pacman.d/gnupg/gpg-agent.conf
pacman-key --populate archlinux