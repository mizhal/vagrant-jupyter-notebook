# -*- mode: ruby -*-
# vi: set ft=ruby :

ip = "192.168.7.3"

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/wily64-juju"
  config.vm.box_check_update = false
  config.vm.hostname = "jupyter-local.com"
  config.hostsupdater.aliases = ["data.local-notebook.com"]

  config.vm.network "private_network", ip: ip
  config.vm.network "forwarded_port", guest: 8888, host: 8888

  config.vm.synced_folder "./data", "/data"
  config.vm.synced_folder "./notebooks", "/notebooks"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
  end

  config.vm.provision "python", type: "shell" do |py|
    py.path = "./install-python.sh"
  end

  config.vm.provision "jupyter-conf", type: "file" do |jc|
    jc.source = "./jupyter_notebook_config.py"
    jc.destination = "~/.jupyter/jupyter_notebook_config.py"
  end

  config.vm.provision "jupyter-daemon", type: "file" do |jda|
    jda.source = "./daemons/jupyter-notebook.sh"
    jda.destination = "/tmp/jupyter-notebook.sh"
  end

  config.vm.provision "install-daemon", type: "shell" do |id|
    id.path = "./install-daemon.sh"
  end

  config.vm.provision :reload
  
end
