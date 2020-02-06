===============
*Project steps*
=============== 
1) Preparing the management server
- you can use either vm or EC2 instance
- in this project we will use EC2
- We will use Ansible script to install all required dependencies and applications
- add the required variables in the inventory
- from your laptop run:
```
ansible-playbook main.yml -i inventory
```
- now your machine is ready to configure Jenkins
- install blueocean and S3 plugins
- 

