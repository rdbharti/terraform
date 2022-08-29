terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.30.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = "----"
    secret_key = "----"
    }

resource "aws_eip" "lb" {
    vpc = true
}

output "EIP" {
    value = aws_eip.lb.public_ip
}

resource "aws_s3_bucket" "mys3" {
    bucket = "---- unique bucket name ---"
  
}

output "myS3Bucket" {
    value = aws_s3_bucket.mys3.bucket_domain_name
}