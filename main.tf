terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14"
    }
  }

  backend "s3" {
    bucket = "ostad-devops-demo-tf-state"
    region = "ap-southeast-1"
    key    = "devops-demo.tfstate"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}