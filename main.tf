terraform {
  required_version = "1.0.10"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "3.63.0"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "exemplo_s3" {
  bucket = "robson-devops-exemplo-s3-bucket"
  acl    = "private"

  tags = {
    Name        = "Exemplo S3 bucket"
    Environment = "Desenvolvimento"
    ManagedBy   = "Terraform"
  }
}