# notes

## files overview

### main.tf

purpose – declare actual infrastructure resources you want terraform to create (ec2 instances, s3 buckets, vpcs, etc.).

contents – resource blocks (resource "aws_instance" "starter" { ... }), data sources.

### providers.tf

purpose – which cloud or service providers terraform should talk to (aws, gcp, azure, etc.), and configures them.

contents – terraform { required_providers { ... } } plus provider "aws" { region = var.aws_region }.

### variables.tf

purpose – input variables that make configuration flexible and reusable.

contents – variable blocks (variable "aws_region" { ... }, variable "instance_type" { ... }).

### outputs.tf

purpose – defines which values terraform should display after a run and optionally expose to other modules. it’s the “reporting file” that surfaces details of the infrastructure.

contents – output blocks (output "instance_public_ip" { ... }) that reference attributes from resources or data sources.

## general syntax

### data

tells terraform you’re not creating a new resource, but instead looking up or reading existing information from aws

### aws_ami

specifies the type of data source. here it means, query amazon machine images (amis) from aws

### amazon_linux_2

this is the local name for this data source

### resource

tells terraform that this block defines a resource to be provisioned.

### aws_instance

the resource type - here it means an ec2 instance in aws. each resource type corresponds to a specific aws service (aws_s3_bucket, aws_vpc, etc.).

### starter

the local name given to this resource.