# Terraform AWS Auto Scaling Group with Launch Template and ALB

This repository contains a Terraform configuration that creates an AWS Auto Scaling Group (ASG) using a Launch Template (instead of the deprecated Launch Configuration). In addition, it provisions an Application Load Balancer (ALB) with a target group and listener rules to route traffic to your instances.

## Architecture Overview

- **Launch Template**:  
  Defines the EC2 instance configuration including the AMI, instance type, security groups, and user data.

- **Auto Scaling Group (ASG)**:  
  Uses the launch template to create and manage a fleet of instances across multiple subnets.

- **Application Load Balancer (ALB)**:  
  Distributes incoming traffic to the instances registered in the target group.

- **Security Groups**:  
  - **Instance Security Group**: Allows inbound traffic on the specified server port.
  - **ALB Security Group**: Allows inbound HTTP traffic on port 80.

## Files in this Repository

- **`main.tf`**:  
  Contains the main Terraform configuration for the ASG, Launch Template, ALB, and related resources.

- **`variables.tf`**:  
  Contains variable definitions (e.g., `server_port`, `instance_security_group_name`, `alb_name`, `alb_security_group_name`).

- **`outputs.tf`**:  
  Defines outputs for the launch template ID, Auto Scaling Group name, and ALB DNS name.

- **`README.md`**:  
  This file, which provides an overview of the configuration and usage instructions.

## Prerequisites

- **Terraform**:  
  Make sure [Terraform](https://www.terraform.io/downloads) is installed.

- **AWS Credentials**:  
  Configure your AWS credentials via environment variables, AWS CLI, or an AWS credentials file.

- **AWS Account Permissions**:  
  Ensure your AWS account has the necessary permissions to create EC2, Auto Scaling, and ALB resources.

## Usage Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Ahmed-Clouddev/terraform-Web-Cluster-.git
  
