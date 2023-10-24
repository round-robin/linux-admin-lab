# Linux admin lab
A Vagrant driven lab environment for learning Linux administration

## What it does
It will deploy a lab environment consisting of a server machine and a (configurable) number of clients. An integrated Ansible playbook will then configure a basic NFS server on the server machine. You will be able to mount the share on the client systems as well as exercise other administrative tasks.

## Required software
- Oracle VirtualBox
- Hashicorp Vagrant

## How to use it
1. Install the required software
1. Clone the project
1. Change the directory to the project directory
1. Run the "vagrant up" command to build the environment
1. Run "vagrant destroy" to tear down the whole environment
