terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-assets-ex1"
    key            = "Backend-VPC/terraform.tfstate"
    region         = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-state-lock-vpc"
    encrypt        = true
  }
}
