systemctl disable systemd-resolved.service
rm /etc/resolv.conf
mv resolv.conf /etc
pacman-key --init
echo "disable-scdaemon" > /etc/pacman.d/gnupg/gpg-agent.conf
pacman-key --populate archlinuxarm

echo "Changing some permissions, please be patient"
chmod 755 -R /bin /home /mnt /run /srv /tmp /var /boot /etc /lin /opt /root /sbin /sys /usr