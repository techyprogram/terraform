terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "my-ec2" {
    ami = "ami-085ad6ae776d8f09c"
    instance_type = "t2.micro"
    tags = {
      Name = "first-ec2-by-terraform"
    }
}