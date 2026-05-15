terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.45.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  alias = "uw2"
}

provider "aws" {
  region = "us-east-2"
  alias = "ue2"
}