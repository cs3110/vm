Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.hostname = "vm3110-2017fa"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.name = "vm3110-2017fa"
    vb.memory = "2048"
    vb.customize ["modifyvm", :id, "--vram", "16"]
  end
  
#  config.vm.provision :shell, :path => "root-setup.sh"
#  config.vm.provision :shell, privileged: false, :path => "user-setup.sh"
  
end
