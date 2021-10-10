#!/bin/sh
for x in 19 18 17 16 9 8 7 6
do
echo "headless mode pc$x"
ssh pc$x 'sudo systemctl stop gdm3; sudo systemctl disable gdm3; sudo systemctl set-default multi-user.target; sudo reboot'
done
