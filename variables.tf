variable "region" {
  description = "AWS Deployment region.."
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "environment" {
  description = "Environment => Dev/Staging/Prod"
  type        = string
  default     = "dev"
}

variable "public_subnets_cidr" {
  description = "Public subnets cidr"
  type        = list
  default     = ["10.0.1.0/24"]
}

variable "private_subnets_cidr" {
  description = "Private subnets cidr"
  type        = list
  default     = ["10.0.2.0/24"]
}

variable "production_availability_zones" {
  description = "AZ"
  type        = list
  default     = ["us-east-1a"]
}

