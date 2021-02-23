
Vagrant.configure("2") do |config|

  config.vm.define "api" do |api|
    api.vm.box = "ubuntu/xenial64"
    api.vm.network "forwarded_port", guest: 3000, host: 3000
    api.vm.hostname = "api"
    api.vm.provider :virtualbox do |v|
      v.memory = 512
      v.cpus = 1
    end
    api.vm.provision "shell" do |script|
      script.path = "./provision.sh"
    end
  end

  config.vm.define "ui" do |ui|
    ui.vm.box = "ubuntu/xenial64"
    ui.vm.network "forwarded_port", guest: 3030, host: 3030    
    ui.vm.hostname = "ui"
    ui.vm.provider :virtualbox do |v|
      v.memory = 512
      v.cpus = 1
    end
    ui.vm.provision "shell" do |script|
      script.path = "./provision.sh"
    end
  end


end
