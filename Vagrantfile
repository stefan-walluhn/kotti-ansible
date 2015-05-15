# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "neuland/debian-jessie-amd64"
  config.vm.network :forwarded_port, host: 8080, guest: 80
  config.vm.synced_folder "src/", "/srv/kotti/src", create: true

  config.vm.provision :shell, inline: "sudo apt-get update && sudo apt-get -qy install python libpython2.7-dev git postgresql libpq-dev nginx"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "kotti.yml"
    ansible.groups = {
        "vagrant" => ["default"]
    }
  end
end
