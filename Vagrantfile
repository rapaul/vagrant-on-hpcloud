# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'dummy'
  config.vm.box_url = 'https://github.com/cloudbau/vagrant-openstack-plugin/raw/master/dummy.box'

  config.vm.provider :openstack do |os|
    os.username = ENV['OS_USERNAME']
    os.api_key  = ENV['OS_PASSWORD']
    os.tenant   = ENV['OS_TENANT_NAME']
    os.endpoint = 'https://region-a.geo-1.identity.hpcloudsvc.com:35357/v2.0/tokens'

    os.flavor   = 'standard.small'
    os.image    = '78265'

    hostname = `hostname`.chomp
    os.server_name = "#{hostname}-vagrant"
  end
end
