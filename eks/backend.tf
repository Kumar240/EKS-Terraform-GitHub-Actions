terraform {
  required_version = "~> 1.9.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }

  backend "s3" {
    bucket         = "mybucket2108k"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Lock-Files"
  }
}
