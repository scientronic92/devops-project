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
- install blueocean
- add aws and docker credentials, you can either add it in jenkins credentials or in the management server terminal run:
```
sudo -i
su jenkins
aws configure
docker login --username <username>
```
2) add management server ip with jenkins port to github repository webhook
3) from blue ocean add the pipeline
4) to update the deployed kubernetes you can use the second pipeline:
https://github.com/scientronic92/updating-kubernetes-pipeline

