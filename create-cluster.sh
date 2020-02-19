# Step 1:
# creating the kubernetes cluster
# login to jenkins user and run: ssh-keygen
# --managed only with version 1.14

eksctl create cluster \
--name k8s-test \
--version 1.14 \
--region us-west-2 \
--nodegroup-name standard-workers \
--node-type t2.micro \
--nodes 2 \
--nodes-min 2 \
--nodes-max 2 \
--ssh-access \
--ssh-public-key /home/ubuntu/.ssh/id_rsa.pub \
--managed \ 
--auto-kubeconfig

# Step 2:
# updating configuration

aws eks update-kubeconfig --name k8s-test
