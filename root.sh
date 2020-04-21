#!/bin/bash

if [ $USER != 'root' ]; then
	 echo Please login as a root to execute the MagicMirror installation,  not $USER
	 exit 1
fi

echo "@xset s off" >> /etc/xdg/lxsession/LXDE-pi/autostart
echo "@xset -dpms" >> /etc/xdg/lxsession/LXDE-pi/autostart
echo "@xset s noblank" >> /etc/xdg/lxsession/LXDE-pi/autostart
echo "@chromium-browser --kiosk http://192.168.1.13:8081" >> /etc/xdg/lxsession/LXDE-pi/autostart
echo "@unclutter -idle 0" >> /etc/xdg/lxsession/LXDE-pi/autostart
echo "lcd_rotate=2" >> /boot/config.txt
echo "display_splash=1" >> /boot/config.txt