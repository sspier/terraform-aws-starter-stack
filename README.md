# terraform-aws-starter-stack

A Hello World of Terraform.

- This version creates a single EC2 instance in the default VPC using Terraform. The instance runs a tiny HTTP server that serves a simple hello page.

## Prerequisites

- Terraform 1.8 or later
- An AWS account
- AWS credentials configured locally (for example with `aws configure`, environment variables, or AWS SSO)

## Files

- `providers.tf`  
  Configures the AWS provider and region, and sets default tags.
- `variables.tf`  
  Defines input variables such as the EC2 instance type.
- `main.tf`  
  Looks up a recent Amazon Linux 2 AMI and creates a single EC2 instance with a small HTTP server.
- `outputs.tf`  
  Prints the public IP and DNS of the instance after apply.

## Usage

Initialize Terraform:

```bash
terraform init
```

Format and validate configuration:

```bash
terraform fmt
terraform validate
```

See what Terraform plans to create:

```bash
terraform plan
```

Apply the changes:

```bash
terraform apply
```

Type yes to confirm. When the apply completes, Terraform will output the instance_public_ip and instance_public_dns values.

Open the DNS name in your browser:

```bash
http://<instance_public_dns>
```

You should see:

```bash
Hello from terraform-aws-starter-stack!
```

To clean everything up:

```bash
terraform destroy
```
