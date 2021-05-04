variable "region" {
  description = "AWS Deployment region.."
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string
}

variable "environment" {
  description = "Environment => Dev/Staging/Prod"
  type        = string
}

variable "public_subnets_cidr" {
  description = "Public subnets cidr"
  type        = list(any)
}

variable "private_subnets_cidr" {
  description = "Private subnets cidr"
  type        = list(any)
}

variable "availability_zones" {
  description = "AZ"
  type        = list(any)
}
