# Terraform configuration
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
# new comment for testing atlantis
provider "aws" {
  region                  = var.region
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "default"
}

module "vpc" {
  source               = "./modules/vpc"
  region               = var.region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones   = var.production_availability_zones
}
