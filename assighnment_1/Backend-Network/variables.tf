# Variables Configuration

variable "network-name" {
  default     = "Backend"
  type        = string
  description = "The name of your EKS Cluster"
}
variable "aws-region" {
  default     = "eu-west-1"
  type        = string
  description = "The AWS Region to deploy EKS"
}

variable "availability-zones" {
  default     = ["eu-west-1a", "eu-west-1b"]
  type        = list
  description = "The AWS AZ to deploy EKS"
}

variable "vpc-subnet-cidr" {
  default     = "15.0.0.0/16"
  type        = string
  description = "The VPC Subnet CIDR"
}

variable "private-subnet-cidr" {
  default     = ["15.0.1.0/24", "15.0.2.0/24"]
  type        = list
  description = "Private Subnet CIDR"
}

variable "public-subnet-cidr" {
  default     = ["15.0.101.0/24", "15.0.102.0/24"]
  type        = list
  description = "Public Subnet CIDR"
}

variable "db-subnet-cidr" {
  default     = ["15.0.201.0/24", "15.0.202.0/24"]
  type        = list
  description = "DB/Spare Subnet CIDR"
}

variable "nat-gateway" {
  default     = "false"
  type        = string
  description = "Enable/Disable NAT Gateway creation"
} 