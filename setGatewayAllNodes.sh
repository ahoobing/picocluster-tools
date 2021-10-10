#!/bin/sh
for x in 19 18 17 16 9 8 7 6 
do
echo "setting network  pc$x"
ssh pc$x 'sudo route add default gw 192.168.86.1'
done
