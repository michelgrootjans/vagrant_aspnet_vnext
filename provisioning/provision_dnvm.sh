#!/bin/bash

# Get DNVM
apt-get -y install unzip
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh

# Add sources to NuGet.config (For package restore)
config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
