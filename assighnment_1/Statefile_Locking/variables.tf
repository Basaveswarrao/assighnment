# Variables Configuration

variable "tf_bucket_name" {
  default     = "terraform-assets-ex1"
  type        = string
  description = "The s3 bucket name of your tfstate file  storing"
}

variable "eks_dynamo_table" {
  default     = "terraform-state-lock"
  type        = string
  description = "The s3 bucket name of your tfstate file  storing"
}

variable "aws-region" {
  default     = "us-east-2"
  type        = string
  description = "The AWS Region to deploy EKS"
}

variable "vpc_dynamo_table" {
  default     = "terraform-state-lock-vpc"
  type        = string
  description = "The AWS Region to deploy EKS"
}
