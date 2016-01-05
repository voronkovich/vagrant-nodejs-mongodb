Vagrant.configure("2") do |config|
    # You can find more Ubuntu boxes here: https://vagrantcloud.com/ubuntu
    config.vm.box = "ubuntu/trusty64"
    config.vm.network :forwarded_port, guest: 3000, host: 3000
    config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: [ ".git/" ]
    config.vm.provision :shell, :path => "bootstrap.sh"

    config.vm.provider :virtualbox do |vb|
        vb.memory = 512
    end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :
