#!/bin/bash

# Get DNVM
apt-get -y install unzip
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh

source ~/.dnx/dnvm/dnvm.sh

dnvm upgrade