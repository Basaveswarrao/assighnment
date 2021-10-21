
# EC2 Instances that will be created in VPC Private Subnets
module "ec2_app" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.2.0"
  name = "${var.cluster-name}-ec2"
  ami = data.aws_ami.bastion.id
  instance_type = node-instance-type
  user_data = << EOF
		#! /bin/bash
        sudo yum update -y
        sudo yum install -y httpd
        sudo systemctl enable httpd
        sudo service httpd start  
        sudo echo '<h1>Hello world-1</h1>' | sudo tee /var/www/html/index.html
	    EOF
  key_name = "${aws_key_pair.deployer.key_name}"
  vpc_security_group_ids = [data.aws_security_group.cluster.id]
  instance_count = 2
  subnet_ids = data.terraform_remote_state.backend_network.outputs.private_subnets
  tags = {
    Name = "${var.cluster-name}-app"
  }
}
