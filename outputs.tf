# Output for the AWS Region
output "aws_region" {
  description = "The AWS region used for the deployment"
  value       = var.region
}
# Output for VPC 
output "vpc_id" {
  value = aws_vpc.weasel_crm_vpc.id
}

# Output for Subnets 
output "public_subnet_ids" {
  value = [aws_subnet.weasel_crm_public1.id, aws_subnet.weasel_crm_public2.id, aws_subnet.weasel_crm_public3.id]
}

output "private_subnet_ids" {
  value = [aws_subnet.weasel_crm_private1.id, aws_subnet.weasel_crm_private2.id, aws_subnet.weasel_crm_private3.id]
}

# Output for AWS Autoscaling Group
output "aws_autoscaling_group_name" {
  value = aws_autoscaling_group.weasel_crm_asg.name
}

output "aws_autoscaling_group_arn" {
  value = aws_autoscaling_group.weasel_crm_asg.arn
}

# Output for AWS EC2 Instances 
output "ec2_instance_ids" {
  description = "List of IDs of EC2 instances"
  value       = aws_autoscaling_group.weasel_crm_asg.instances[*].id
}

# Output for Security Groups
output "ec2_security_group_id" {
  value = aws_security_group.weasel_crm_sg.id
}

output "rds_security_group_id" {
  value = aws_security_group.weasel_crm_rds_sg.id
}


# Output for AWS RDS Instance
output "aws_db_instance_id" {
  value = aws_db_instance.weasel_crm_rds.id
}

output "aws_db_instance_endpoint" {
  value = aws_db_instance.weasel_crm_rds.endpoint
}

# Output for AWS S3 Bucket
output "aws_s3_bucket_id" {
  value = aws_s3_bucket.private_bucket.id
}

output "aws_s3_bucket_arn" {
  value = aws_s3_bucket.private_bucket.arn
}


# Output for AWS ELB
output "aws_elb_name" {
  value = aws_elb.weasel_crm_elb.name
}

output "aws_elb_dns_name" {
  value = aws_elb.weasel_crm_elb.dns_name
}

# Output for Internet Gateway
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.weasel_crm_gw.id
}

# Output for NAT Gateway
output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.weasel_crm_ngw.id
}

# Output for Elastic IP associated with the NAT Gateway
output "nat_gateway_eip" {
  description = "The Elastic IP address associated with the NAT Gateway"
  value       = aws_eip.weasel_crm_nat.public_ip
}

# Outputs for Route Tables
output "public_route_table_id" {
  description = "The ID of the public Route Table"
  value       = aws_route_table.weasel_crm_rt_pub.id
}

output "private_route_table_id" {
  description = "The ID of the private Route Table"
  value       = aws_route_table.weasel_crm_rt_prv.id
}




