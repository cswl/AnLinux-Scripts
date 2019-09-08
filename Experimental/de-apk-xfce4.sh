#!/bin/bash

#Get the necessary components
apk update
apk add xfce4 xfce4-terminal xrdp

#Setup the necessary files
echo xfce4-session > ~/.xsession
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Experimental/startwm.sh -P /etc/xrdp

chmod +x /etc/xrdp/startwm.sh

echo " "
echo "You can now start xrdp by running xrdp"
echo " "
echo "The VNC Server will be started at 127.0.0.1:3389"
echo " "
echo "You can connect to this address with a RDP Client you prefer"
echo " "
echo "Connect to this address will open a window with Xfce4 Desktop Environment"
echo " "
echo "Before proceeding, please set a password for current user (root)"
echo " "
echo " "
echo " "
echo "Running xrdp"
echo " "
echo "Now you can connect to 127.0.0.1:3389 using the following info:"
echo " "
echo "Username:root"
echo "Password:(What you set just now)"
echo " "
echo " "
echo " "
echo "To Kill xrdp just run xrdp --kill"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

xrdp