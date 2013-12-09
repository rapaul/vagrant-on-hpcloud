# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'dummy'
  config.vm.box_url = 'https://github.com/cloudbau/vagrant-openstack-plugin/raw/master/dummy.box'

  keypair_name = ENV['OS_KEYPAIR_NAME']
  config.ssh.private_key_path = "~/.ssh/hpcloud/#{keypair_name}"

  config.vm.provider :openstack do |os|
    os.username = ENV['OS_USERNAME']
    os.api_key  = ENV['OS_PASSWORD']
    os.tenant   = ENV['OS_TENANT_NAME']
    os.endpoint = "#{ENV['OS_AUTH_URL']}/tokens"

    os.keypair_name = keypair_name
    os.ssh_username = 'root'

    os.flavor   = 'standard.small'
    os.image    = '78265'

    os.address_id = 'private' # Chooses the 15.x.x.x range 'private IP' over the 10.x.x.x address

    hostname = `hostname`.chomp
    os.server_name = "#{hostname}-vagrant"
  end
end
