# Vagrantfile
Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/ubuntu2004"
    config.vm.network "private_network", type: "dhcp"
  # Provider specific configuration
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end

    # Forwarding ports for easier access
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    config.vm.network "forwarded_port", guest: 5000, host: 5000

    # Ansible provisioning.
    config.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end
  