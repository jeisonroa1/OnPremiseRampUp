
Vagrant.configure("2") do |config|
  config.vm.network "public_network"

  config.vm.define "api" do |api|
    api.vm.box = "ubuntu/xenial64"
    api.vm.network "forwarded_port", guest: 3000, host: 3000
    api.vm.hostname = "api"
    api.vm.network :private_network, ip: "10.0.0.10"
    api.vm.provider :virtualbox do |v|
      v.memory = 512
      v.cpus = 1
    end
    api.vm.provision "shell" do |script|
      script.env = {"PORT" => "3000"}
      script.path = "./provision.sh"
    end
  end

  config.vm.define "ui" do |ui|
    ui.vm.box = "ubuntu/xenial64"
    ui.vm.network "forwarded_port", guest: 3030, host: 3030    
    ui.vm.hostname = "ui"
    ui.vm.network :private_network, ip: "10.0.0.11"
    ui.vm.provider :virtualbox do |v|
      v.memory = 512
      v.cpus = 1
    end
    ui.vm.provision "shell" do |script|
      script.env = {"BACK_HOST" => "10.0.0.10"}
      script.path = "./provision.sh"
    end
  end
end
