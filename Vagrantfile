Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"

  config.vm.synced_folder ".", "/home/vagrant/app"
  # config.vm.synced_folder "./environment", "/home/vagrant/environment"
  # config.vm.synced_folder "./app", "/home/vagrant/app1"

  # config.vm.provision "shell", path: "environment/provision.sh"
  
end
