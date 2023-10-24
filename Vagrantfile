# A Vagrantfile for deploying a self-contained Linux training environment based on Rocky 9

Vagrant.configure("2") do |config|
 config.vm.box = "generic/rocky9"
 config.vm.synced_folder "./", "/vagrant"

  config.vm.define "server" do |server|

    config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
    end

  server.vm.hostname = "server"
  server.vm.network "private_network", ip: "192.168.56.10"

    server.vm.provision "shell",
    inline: "sudo /bin/bash /vagrant/generate-hosts.sh >> /etc/hosts"
    server.vm.provision "shell",
    inline: "hostnamectl set-hostname server" 

    server.vm.provision "shell",
    inline: "sudo -u vagrant ssh-keygen -f /home/vagrant/.ssh/id_rsa"

    server.vm.provision "shell",
    inline: "sudo yum install -y ansible"

    server.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "playbooks/server-config.yml"
    end
  end

  (1..1).each do |i|

   config.vm.define "client-#{i}" do |client|

      config.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.cpus = 1
      end
  
   client.vm.network "private_network", ip: "192.168.56.#{i + 10}"
   client.vm.hostname = "cl#{i}"
   client.vm.provision "shell",
   inline: "sudo /bin/bash /vagrant/generate-hosts.sh >> /etc/hosts"
   end
 end  #Configure all hosts as Rocky 9
end  #End of the whole config
