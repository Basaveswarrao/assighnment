data "aws_vpc" "eks" {
  id = "${module.vpc.vpc_id}"
}

data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.eks.id

  tags = {
    Name = "${var.network-name}-private"
  }
}

data "aws_subnet_ids" "public" {
  vpc_id = data.aws_vpc.eks.id

  tags = {
    Name = "${var.network-name}-public"
  }
}