# we have to specify the provider in order to use terraform with that provider ex: aws, gcp, google
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.36.0"
    }
  }
}


provider "aws" {

  region = "us-east-1"
}