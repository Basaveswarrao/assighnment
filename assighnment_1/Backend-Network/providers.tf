#
# Provider Configuration

provider "aws" {
  region = var.aws-region
  version = "~> 3.63.0"
}
