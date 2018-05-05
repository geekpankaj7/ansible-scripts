Vagrant.configure("2") do |config|

  config.vm.box = "debian/stretch64"

  config.vm.define "debian1"
  config.vm.network "public_network",
      :dev => "br0",
      :mode => "bridge",
      :type => "bridge"


  ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
  config.vm.provision 'shell', inline: 'mkdir -p /root/.ssh'
  config.vm.provision 'shell', inline: "echo #{ssh_pub_key} >> /root/.ssh/authorized_keys"
  config.vm.provision 'shell', inline: "echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys", privileged: false
end
