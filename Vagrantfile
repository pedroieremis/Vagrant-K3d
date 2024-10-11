Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.name = "Vagrant-K3d"
    v.cpus = 4
    v.memory = "4096"
  end
  config.vm.box = "debian/bullseye64"
  config.vm.hostname = "VM-K3d"
  config.vm.network "public_network", ip: "192.168.0.200", netmask: "255.255.255.0", bridge: "wlo1"
  config.vm.provision "shell", path: "./shell.sh"
end