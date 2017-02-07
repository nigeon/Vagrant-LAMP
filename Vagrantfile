Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.network "private_network", ip: "192.168.50.1"
    config.vm.network :forwarded_port, host: 8080, guest: 80
    config.vm.network :forwarded_port, host: 33066, guest: 3306
    config.vm.network :forwarded_port, host: 8443, guest: 443

    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        # Uncomment the following lines if you get stuck "default: Warning: Connection timeout. Retrying..."
        # Display the VirtualBox GUI when booting the machine
        # vb.gui = true

        vb.memory = 1024
        vb.cpus = 2
    end

    config.vm.provision :chef_solo do |chef|
        chef.roles_path = "chef/roles"
        chef.cookbooks_path = ["chef/cookbooks","chef/custom-cookbooks"]
        chef.add_role "vagrant-main"
    end
end
