terraform {

  cloud {
    organization = "terraform-basic-practice"
    workspaces {
      name = "basic"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

