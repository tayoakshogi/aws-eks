terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "sample-aws-tfstate"
    key    = "eks/aws.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}