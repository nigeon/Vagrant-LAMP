Vagrant.configure("2") do |config|
    # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = "precise64"

    # The url from where the 'config.vm.box' box will be fetched if it doesn't already exist on the user's system.
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    # Create a forwarded port mapping which allows access to a specific port within the machine from a port on the host machine.
    config.vm.network "private_network", ip: "192.168.50.1"
    config.vm.network :forwarded_port, host: 8080, guest: 80
    config.vm.network :forwarded_port, host: 33066, guest: 3306

    # Enable provisioning with chef solo, specifying a cookbooks path, roles path and adding some recipes and/or roles.
    config.vm.provision :chef_solo do |chef|
        chef.roles_path = "chef/roles"
        chef.cookbooks_path = ["chef/cookbooks","chef/site-cookbooks"]
        chef.add_role "vagrant-main"
    end
end