# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "asp.net-vnext"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:5000" will access port 5000 on the guest machine.
  config.vm.network "forwarded_port", guest: 5000, host: 5000

  config.vm.provision "shell", path: "provisioning/provision_mono.sh"
  config.vm.provision "shell", path: "provisioning/provision_libuv.sh"
  config.vm.provision "shell", path: "provisioning/provision_dnvm.sh"
  config.vm.provision "file", source: "provisioning/NuGet.config", destination: "~/.config/NuGet/NuGet.config"

end
