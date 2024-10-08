terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.63.0"
    }
  }
  backend "s3" {
    bucket  = "terraform-aws-service-infra"
    key     = "terraform-resources-project/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "random" {}
