output "ec2_public_ip" {
  value = aws_instance.ec2_instance.associate_public_ip_address
}

output "ec2_private_ip" {
  value = aws_instance.ec2_instance.private_ip
}