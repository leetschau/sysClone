# User Environments Backup and Restore Tool

## Sync user configurations and custom scripts

This tool help Linux users to backup and restore system configurations
in your working environment quickly and easily.

For backup configurations in working environment to this repository:
`./sc bak`;

For restore configurations in this repository to a new OS:
`./sc res`;

For command format help: `./sc`.

## Build user develop environment in VM

Follow the provision.md in vm folder.

# Build Virtual Linux Environment

## Windows

1. Download and install Git for Windows (for now the installer is Git-1.9.5-preview20150319.exe)
   from [msysgit website](https://msysgit.github.io/). It will install Git GUI and Git Bash;
   When asking for "line ending conversions", choose "Checkout as-is, commit Unix-style line endings".
   See note below for the reason.

1. Download and install Vagrant (vagrant_1.7.2.msi for now);

1. Download trusty box (trusty-server-cloudimg-amd64-vagrant-disk1.box) from [vagrantbox.es](http://www.vagrantbox.es/);

1. Start Git Bash, run the following commands:

        cd some/path
        git clone https://github.com/leetschau/sysClone.git
        cd sysClone/vm
        vagrant init --output -
        vagrant up
        vagrant ssh

1. Now in the VM, run `/vagrant/provision.sh`;

Next when you need start up this environment, open the "vm" folder, right click and open "Git Bash".
In the shell run `vagrant up` and `vagrant ssh`.

Note:

1. Git shouldn't convert the line endings of the shell scripts. Or there will be errors when execute these scripts in VM;

1. To change font size, copy and paste text, try clicking the console's window icon (topleft),
   Then select in the menu;

1. Press `Insert` key to paste text into Git Bash, or use right mouse button after open "fast edit" mode;

1. After sysClone is cloned to local, and run `cd sysClone/vm`, if an error "vm doesn't exists" appears,
   maybe the vm folder is not on branch master.
   List all branches with `git branch -r`, and checkout the right one.

Ref:

http://stackoverflow.com/questions/2304372/how-do-you-copy-and-paste-into-git-bash
