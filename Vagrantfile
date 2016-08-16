Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "csvm"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.name = "csvm-2016fa"
    vb.memory = "2048"
    vb.customize ["modifyvm", :id, "--vram", "16"]
  end
  
  config.vm.provision :shell, :path => "root-setup.sh"
  config.vm.provision :shell, privileged: false, :path => "user-setup.sh"
  
end
