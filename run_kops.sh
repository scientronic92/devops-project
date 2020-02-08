kops create cluster --name=kubernetes.maincloud.space --state=s3://mykops-state-cluster --zones=us-west-1a --node-count=2 --node-size=t2.micro --dns-zone=kubernetes.maincloud.space
