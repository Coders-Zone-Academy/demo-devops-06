# Disaster Recovery with AWS Backup

This is the project template to practice disaster recovery with AWS.

## Search for subnets within my assigned VPC

You must execute the following command, having first configured your AWS CLI credentials.

```bash
aws ec2 describe-subnets --region us-east-1 --query "Subnets[*].[SubnetId,VpcId,AvailabilityZone,CidrBlock]" --output table
```

## important step before restoring the resources

> NOTE: After deleting the project resources using Terraform, you must restore the `db_sg` security group and, when restoring the database, assign that security group to the restored database.
