resource "aws_vpc" "vp1" {
  cidr_block = "10.10.0.0/16"
  instance_tenancy = "default"
  tags ={
    Name = "splunk-vpc"
    Team = "wdp"
    env = "dev"
  }
}