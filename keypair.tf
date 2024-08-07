resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits = 2048
}
resource "aws_key_pair" "aws_key" {
    key_name = "splunk"
    public_key = tls_private_key.ec2_key.public_key_openssh
  
}
resource "local_file" "ssh_key" {
    filename = "splunk.pem"
    content = tls_private_key.ec2_key.private_key_pem
  
}