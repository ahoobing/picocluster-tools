#!/bin/sh
for x in 19 18 17 16 9 8 7 6 
do
echo "setting kubernetes worker  pc$x"
ssh pc$x 'sudo /usr/local/bin/k3s-agent-uninstall.sh'
done
