
resource "tls_private_key" "k8s" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "deployer" {
  key_name             = var.cluster-name
  public_key           = tls_private_key.k8s.public_key_openssh
  key_name_prefix      = var.key_name_prefix
}