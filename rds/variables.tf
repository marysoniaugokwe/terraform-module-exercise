variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "public_subnets_cidrs" {
  type = list(string)
}

variable "db_identifier" {
  type    = string
}
variable "db_username" {
  type    = string
}

variable "db_password" {
  type    = string
  sensitive = true
}

variable "allowed_cidr_range_for_rds" {
  type    = list(string)
}