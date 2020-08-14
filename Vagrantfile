Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.hostname = "vm3110-2020fa"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.name = "vm3110-2020fa"
    vb.memory = "4096"
    vb.customize ["modifyvm", :id, "--vram", "32"]
    vb.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    vb.customize ["storageattach", :id, 
                  "--storagectl", "SATA Controller", 
                  "--port", "1", "--device", "0", 
                  "--type", "dvddrive", 
                  "--medium", "emptydrive"]     
  end  
  
  config.vm.provision :shell, :path => "root-setup.sh"
  config.vm.provision :shell, privileged: false, :path => "user-setup.sh"
  config.vm.provision :file, source: "caravan.jpg", destination: "/home/vagrant/Pictures/caravan.jpg"
  config.vm.provision :file, source: "post_provision.sh", destination: "/home/vagrant/post_provision.sh"
  config.vm.provision :file, source: "vsc_settings.json", destination: "/home/vagrant/.config/Code/User/settings.json"
end
