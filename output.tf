output "public_ip" {
    value = aws_instance.belo.associate_public_ip_address
  
}
output "sg-id" {
    value = aws_security_group.sg-demo.id
  
}
output "vpc_id" {
    value = aws_vpc.vp1.id
  
}
output "pr-ip" {
    value = aws_instance.belo.public_ip
  
}
output "key_name" {
    value = aws_key_pair.aws_key.key_name
  
}