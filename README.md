# zyzx

![](./gbedema21.PNG)

## todo

+ figure out how to update an ec2-ebs stack - detachin the volume before instance replacement
  + create a `deploy.sh`
    + `aws cloudformation create-change-set ...`
    + `aws cloudformation describe-change-set ...`
    + inspect changes & check whether the ec2 needs to be replaced
    + if yes detach the volume beforehand
    + `aws cloudformation deploy ...`
+ user data startup script
+ autoscalin 3az-single-node-setup with two hibernate backups and 1 live node
  + revive from one shared ebs snapshot
+ audit & tune with regard to high availability
  + RTO & RPO must be 1 minute
  + cron job that updates one ebs snapshot of the chain data volume every minute
+ review ingress
+ choose a better instance type & ami
