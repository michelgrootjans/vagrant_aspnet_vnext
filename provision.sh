#!/bin/bash

# this will run in /home/vagrant

# sudo apt-get -y update

# Get a working version of Mono
apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
apt-get -y update
apt-get -y install mono-complete

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

# Get DNVM
# Add sources to NuGet.config (For package restore)
