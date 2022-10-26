terraform {
  required_version = "1.3.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }
  }
}


provider "aws" {
  region  = "us-east-1"
  profile = "tfcourse"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-19921199129129219219391"
  acl    = "private"

  tags = {
    Name        = "curso_terraform"
    Environment = "development"
    ManagedBy   = "Terraform"
    Owner       = "Vitor Bardasson"
  }

}