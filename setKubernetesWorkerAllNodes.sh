#!/bin/sh
for x in 19 18 17 16 9 8 7 6 
do
echo "setting kubernetes worker  pc$x"
ssh pc$x 'sudo apt-get -y install curl; sudo curl -sfL https://get.k3s.io | K3S_URL=https://pc0:6443 K3S_TOKEN=K101ffb15d7204800b50b3aff67dfb628375dbe8bda00d3417476acdbeaa740194f::server:089314e79ebd7b14b69e172e7405b8ff sh -'
done
