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
  region = "ap-southeast-1"
}

resource "aws_instance" "server" {
  ami           = "ami-06b79cf2aee0d5c92"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
