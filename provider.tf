# --------------------------------------------------------------------------
# AWS Provider Varibles
#----------------------------------------------------------------------------
variable "region" {
  type        = string
  description = "This the region were the resources will be deployed"
  default     = "eu-west-2"
}
# --------------------------------------------------------------------------
# AWS Provider
#----------------------------------------------------------------------------

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

