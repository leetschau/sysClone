# Vagrant VM Provision Steps

1. Install Vagrant;

1. Add trusty box file to vagrant;

1. Create vm root folder. Copy Vagrantfile and packages.sh into it;

1. Run `vagrant up`;

1. Login to the vm with `vagrant ssh` and run:

        cd apps/sysClone
        ./provision.sh
