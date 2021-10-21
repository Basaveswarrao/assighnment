module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"
  name = "${var.network-name}-vpc"

  cidr = var.vpc-subnet-cidr

  azs              = var.availability-zones
  private_subnets  = var.private-subnet-cidr
  public_subnets   = var.public-subnet-cidr
  enable_nat_gateway = var.nat-gateway
  single_nat_gateway = true
  database_subnets = var.db-subnet-cidr

  create_database_subnet_group = true
  enable_dns_hostnames = true
  enable_dns_support   = true
  

  tags = {
    Name                                        = "${var.network-name}-vpc"
    "kubernetes.io/network/${var.network-name}" = "shared"
  }

  public_subnet_tags = {
    Name                                        = "${var.network-name}-public"
    
  }
  private_subnet_tags = {
    Name                                        = "${var.network-name}-private"
  }
  database_subnet_tags = {
    Name = "${var.network-name}-db"
  }
}
