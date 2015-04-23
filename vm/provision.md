# Vagrant VM Provision Steps

## Windows

1. Download and install Git for Windows (for now the installer is Git-1.9.5-preview20150319.exe);

1. Download and install Vagrant (vagrant_1.7.2.msi for now);

1. Download trusty box (trusty-server-cloudimg-amd64-vagrant-disk1.box) from [vagrantbox.es](http://www.vagrantbox.es/);

1. Add trusty box file to vagrant: `vagrant box add trusty trusty-server-cloudimg-amd64-vagrant-disk1.box`;

1. Clone this repository to your local machine, say, "d:/apps/sysClone";

1. Create vm root folder, say, "d:/apps/meteorBox". Copy Vagrantfile and packages.sh under vm folder into it;

1. Run `vagrant up`;

1. Login to the vm with `vagrant ssh` and run:

        cd apps/sysClone
        ./provision.sh
