#!/bin/sh
for x in 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
#for x in 19
do
echo "changing swap on pc$x"
ssh pc$x '~/setSwapMemorySize.sh -g 8; sudo reboot'
done
