# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # You can find more Ubuntu boxes here: https://vagrantcloud.com/ubuntu
    config.vm.box = "ubuntu/trusty64"
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    config.vm.synced_folder "app", "/home/vagrant/app"
    config.vm.provision :shell, :path => "bootstrap.sh"

    config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", "512"]
    end
end
