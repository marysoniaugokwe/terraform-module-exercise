variable "default_tags" {
  type = map(string)
  default = {
    "Owner"       = "Sonia"
    "Environment" = "dev"
    "Project"     = "aws-demo"
    "ManagedBy"   = "terraform"
  }
}
variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "vpc_name" {
  type    = string
  default = "dev-vpc"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "vpc_azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}
variable "vpc_private_subnets" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}
variable "vpc_public_subnets" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}
variable "vpc_enable_nat_gateway" {
  type    = bool
  default = true
}
variable "vpc_single_nat_gateway" {
  type    = bool
  default = true
}

#ec2 instance name

variable "ec2_instance_name" {
  type    = string
  default = "bastion-server"
}

variable "ami_id" {
  type        = string
  default     = "ami-0b5eea76982371e91"
  description = "default to Amazon Linux 2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "ec2-keypair"
}

# RDS variables

variable "db_identifier" {
  type    = string
  default = "postgres-db"
}
variable "db_username" {
  type    = string
  default = "scratchy"
}

variable "db_password" {
  type      = string
  sensitive = true
  validation {
    condition     = length(var.db_password) >= 8
    error_message = "The password must be at least 8 characters long."
  }
}

variable "allowed_cidr_range_for_rds" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
