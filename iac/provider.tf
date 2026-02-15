terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Optional: configure remote state backend (e.g., S3 + DynamoDB)
  # backend "s3" {
  #   bucket         = "my-terraform-state-bucket"
  #   key            = "iac/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "terraform-locks"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.region

  # Optional: profile if you use AWS CLI named profiles
  # profile = var.aws_profile
}