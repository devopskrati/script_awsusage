#!/bin/bash

#############
# Author : Krati
# Date : 10-June-2026
# Version : v1
#
# This script will report the AWSS resource usuage.
##########

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List S3 buckets
echo "Print list of S3 Buckets"
aws s3 ls

# List EC2 instances
echo "Print list of EC2 instances"
# aws ec2 describe-instances
#### Read README.md for a command that filters only instance id from the big output this above command gives
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS Lambda Functions
echo "Print List of AWS Lambda Functions"
aws lambda list-functions

# List IAM Users
echo "Print list of AWS IAM Users"
aws iam list-users
