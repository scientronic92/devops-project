kops create cluster --name=<dns> --state=s3://mykops-state-cluster --zones=us-west-1c --node-count=2 --node-size=t2.micro --dns-zone=<dns>
kops update cluster <dns> --state=s3://mykops-state-cluster --yes
