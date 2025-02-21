
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-005e54dee72cc1d00" # AMI Amazon Linux 2
  instance_type = var.instance_type

  tags = {
    Name = "Servidor-Terraform"
  }
}
