module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  version            = "5.9.0"
  name               = var.vpc_name
  cidr               = var.vpc_cidr
  azs                = var.vpc_azs
  private_subnets    = var.vpc_private_subnets
  public_subnets     = var.vpc_public_subnets
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
}

module "ec2" {
  source               = "./ec2"
  subnet_id            = module.vpc.public_subnets[0]
  vpc_id               = module.vpc.vpc_id
  ec2_instance_name    = var.ec2_instance_name
  instance_type        = var.instance_type
  key_name             = var.key_name
  ami_id               = var.ami_id
}

module "rds" {
  source = "./rds"
  db_identifier = var.db_identifier
  db_password = var.db_password
  db_username = var.db_username
  vpc_id = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnets
  public_subnets_cidrs = module.vpc.public_subnets_cidr_blocks
  allowed_cidr_range_for_rds = var.allowed_cidr_range_for_rds

}
