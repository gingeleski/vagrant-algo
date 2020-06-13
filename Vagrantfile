# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # Supports Hyper-V if : vagrant up --provider hyperv
  config.vm.box = "bento/ubuntu-18.04"

  config.vm.network "public_network"

  config.vm.provision "shell", path: "setup.sh"

end