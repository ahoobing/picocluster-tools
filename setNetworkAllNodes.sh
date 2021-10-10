#!/bin/sh
for x in 19 18 17 16 9 8 7 6 
do
echo "setting network  pc$x"
ssh pc$x 'sudo apt-get -y install wpasupplicant; wpa_passphrase hobie4 hoob13579 | sudo tee /etc/wpa_supplicant.conf; sudo systemctl stop NetworkManager; sudo wpa_supplicant -B -c /etc/wpa_supplicant.conf -i wlan0; sudo dhclient wlan0; sudo route add default gw 192.168.86.1'
done
