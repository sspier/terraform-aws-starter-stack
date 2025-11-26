# settings and provider requirements
terraform {
  # cli version 
  required_version = ">= 1.8.0"

  # which providers are needed
  required_providers {
    aws = {
      # aws provider here is the hashicorp registry
      source = "hashicorp/aws"
      # aws provider version
      version = "~> 5.0"
    }
  }
}

# configure aws provider
provider "aws" {
  # use aws_region variable
  region = var.aws_region

  # apply tags to all aws resources created by this provider automatically without having to repeat
  default_tags {
    tags = {
      # project name
      Project = "terraform-aws-starter-stack"
      # indicate managed by terraform
      ManagedBy = "terraform"
    }
  }
}
