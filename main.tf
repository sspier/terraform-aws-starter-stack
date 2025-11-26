# lookup a recent Amazon linux 2 AMI in the region
data "aws_ami" "amazon_linux_2" {
  # get the latest AMI
  most_recent = true

  # filter by AMI name pattern
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  # filter by virtualization type hvm(hardware virtual machine)
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  # restrict to AMIs owned by amazon
  owners = ["137112412989"] # Amazon's owner ID
}

# a single ec2 instance in the default VPC(Virtual Private Cloud)
resource "aws_instance" "starter" {
  # use the id of the AMI from above
  ami = data.aws_ami.amazon_linux_2.id

  instance_type = var.instance_type # this is t3.micro here by default

  # assign a public ip automatically
  associate_public_ip_address = true

  # script to install and start apache httpd
  user_data = <<-EOF
              #!/bin/bash
              yum install -y httpd
              echo "Hello from terraform-aws-starter-stack!" > /var/www/html/index.html
              systemctl enable httpd
              systemctl start httpd
              EOF

  # for identification in console
  tags = {
    Name = "starter-ec2"
  }
}
