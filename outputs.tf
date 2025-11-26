# output for the EC2 instance public ip
output "instance_public_ip" {
  description = "public ip address of the starter ec2 instance"
  value       = aws_instance.starter.public_ip # starter defined in main.tf
}

# output for the EC2 instance public DNS
output "instance_public_dns" {
  description = "public dns name of the starter ec2 instance"
  value       = aws_instance.starter.public_dns # starter defined in main.tf
}
