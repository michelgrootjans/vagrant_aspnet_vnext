#!/bin/bash

# Get and compile libuv (Required for the Kestrel server)
apt-get -y install automake libtool curl
curl -sSL https://github.com/libuv/libuv/archive/v1.4.2.tar.gz | tar zxfv - -C /usr/local/src
cd /usr/local/src/libuv-1.4.2
sh autogen.sh
./configure
make 
make install
rm -rf /usr/local/src/libuv-1.4.2 && cd ~/
ldconfig
