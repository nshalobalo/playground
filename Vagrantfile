# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision :shell, :path => "bootstrap.sh"
  #config.vm.synced_folder "./html", "/var/www/html", create: true, owner: "apache", group: "apache"
  config.vm.synced_folder "./html", "/var/www/html", create: true
  #config.vm.share_folder "html", "/var/www/html", "./html"
  config.vm.provision :shell do |shell|
    shell.inline = "sudo mount -t vboxsf -o uid=`id -u apache`,gid=`id -g apache` var_www_html /var/www/html"
  end

end
