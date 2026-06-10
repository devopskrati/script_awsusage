AWS resource Tracker using Shell Scripting.

This is to track usage of AWS EC2 instances, S3 Buckets, Lambda Functions, and IAM roles.
We will be putting all this information in one file.
Idea is to get a report generated at 6PM ISt Everyday to let the usuage of above mentioned AWS Services.

Will be using CRON Jobs for it

Some important commands to remember:-

aws ec2 describe-instances | jq '.Reservations[].Instanxes[].InstanceId'

The above command helps to filter the big output that aws ec2 describe-instances will give using jq(json filter), yq(from Yaml filter).
