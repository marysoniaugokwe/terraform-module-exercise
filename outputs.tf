output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "ec2_instance_public_ip" {
  value = module.ec2.ec2_public_ip
}

output "ec2_instance_private_ip" {
  value = module.ec2.ec2_private_ip
}

