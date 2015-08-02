#!/bin/bash

# this will run in /home/vagrant

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
sudo apt-get -y install curl unzip git-core mono-devel

mozroots --import --sync
curl https://raw.githubusercontent.com/aspnet/Home/master/kvminstall.sh | sh && source ~/.kre/kvm/kvm.sh && kvm upgrade

git clone https://github.com/davidfowl/HelloWorldVNext ~/helloworld
sed -i s/aspnetvnext/aspnetmaster/g ~/helloworld/NuGet.Config