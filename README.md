# zyzx

![](./gbedema21.PNG)

## todo

+ user data startup script
+ autoscalin 3az-single-node-setup with two hibernate backups and 1 live node
  + revive from one shared ebs snapshot
  + elastic ip
+ audit & tune with regard to high availability
  + RTO 3s & RPO 1h ?
  + cron job that updates one ebs snapshot of the chain data volume every hour ?
+ review ingress
+ choose a better instance type & ami

## readables

+ [telemetry](https://docs.moonbeam.network/node-operators/networks/telemetry/)

