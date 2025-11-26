# variable for aws region, this way you can pass in any region at runtime
variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  # default region
  default = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type for the starter stack"
  type        = string
  default     = "t3.micro"
}
