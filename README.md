# Set up

Install:

 * [Vagrant](http://www.vagrantup.com/)
 * `vagrant plugin install vagrant-openstack-plugin` [OpenStack plugin](https://github.com/cloudbau/vagrant-openstack-plugin)

The following environment variables need to be exported:

    export OS_AUTH_URL="https://region-a.geo-1.identity.hpcloudsvc.com:35357/v2.0/"
    export OS_TENANT_NAME='my-team'
    export OS_USERNAME='my-team-username'
    export OS_PASSWORD='secret'
    export OS_KEYPAIR_NAME='my-team-keypair'

All of these, with the exception of `OS_KEYPAIR_NAME` are the standard environment variables used by the [OpenStack CLI](https://github.com/openstack/python-novaclient).

You'll need to ensure you have the private key (pem file) you created the keypair with stored in `~/.ssh/hpcloud/my-team-keypair`.

# Running

    $ vagrant up --provider=openstack
    $ vagrant ssh
    $ vagrant destroy (permanent)
    $ vagrant help
