kops create secret --name kubernetes.maincloud.space sshpublickey admin -i ~/.ssh/id_rsa.pub
kops create cluster --name=kubernetes.maincloud.space --state=s3://mykops-state-cluster --zones=us-west-1c --node-count=2 --node-size=t2.micro --dns-zone=kubernetes.maincloud.space
