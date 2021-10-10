#!/bin/sh
for x in 19 18 17 16 9 8 7 6 
do
echo "setting kubernetes worker  pc$x"
ssh pc$x 'sudo apt-get -y install curl; sudo curl -sfL https://get.k3s.io | K3S_URL=https://pc0:6443 K3S_TOKEN=K1096c074b88468e03ae73c19b076d3ae045050fbe92dd67483a719b5700dd091a0::server:8cd5502ef671b7ba5b71a512daa8fa35 sh -'
done
