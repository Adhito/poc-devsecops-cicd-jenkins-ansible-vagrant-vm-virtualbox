VAGRANT_BOX               = "ubuntu/jammy64"
VAGRANT_BOX_VERSION       = "12.20240503.1"


Vagrant.configure(2) do |config|
  config.vm.box =  VAGRANT_BOX

  config.vm.define "DEVCICDNODEMASTER-01-ENV01" do |node_master|
    node_master.vm.network "forwarded_port", guest: 8080, host: 8080
    node_master.vm.network "private_network", ip: "192.168.56.13"
    node_master.vm.hostname = "DEVCICDNODEMASTER-01"

    end
  end


end

