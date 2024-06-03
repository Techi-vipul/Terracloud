terraform {
  required_version = "~> 1.8.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }
  cloud {
    organization = "Terraform-June-Learning"

    workspaces {
      name = "Cli-driven"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
# create one aws_vpc

/* resource "aws_vpc" "vpc01" {
  cidr_block = "10.0.0.0/16"
}
locals {
  users = ["savi", "rahul", "mohit", "aman"]
}

resource "aws_iam_user" "iam" {
  count = length(local.users)
  name  = element(local.users, count.index)
} */
