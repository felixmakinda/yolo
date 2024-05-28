# Vagrantfile
Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/ubuntu2004"
    config.vm.network "private_network", type: "dhcp"
  
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  # Ansible provisioning.
    config.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end
  