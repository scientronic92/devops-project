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
--nodes 4 \
--nodes-min 4 \
--nodes-max 4 \
--ssh-access 

# Step 2:
# updating configuration

aws eks update-kubeconfig --name k8s-test

# in case you need to update the number of worker nodes:
# aws eks update-nodegroup-config --cluster-name k8s-test --nodegroup-name standard-workers --scaling-config=4

