#------------------------------------------------------------------------------------------
# VPC VARIABLES
#------------------------------------------------------------------------------------------
variable "create_vpc" {
  description = "A flag to build a VPC or not. true or false"
  default     = {}
}
variable "vpc_name" {
  description = "Name of the Virtual Private Cloud e.g dev,prod etc"
  default     = {}
}
variable "vpc_cidr" {
  description = "The CIDR range of the VPC"
  default     = {}
}
variable "enable_vpc_dns_hostnames" {
  description = "A flag to determine whether or not to enable VPC DNS host names"
  default     = {}
}
variable "enable_vpc_dns_support" {
  description = "A flag to determine whether or not to enable DNS support"
  default     = {}
}
#-------------------------------------------------------------------------------------------
# CREATE VPC RESOURCE
#--------------------------------------------------------------------------------------------

resource "aws_vpc" "env_vpc" {
  count                = var.create_vpc ? 1 : 0
  cidr_block           = var.vpc_cidr
  enable_dns_support   = var.enable_vpc_dns_support
  enable_dns_hostnames = var.enable_vpc_dns_hostnames

  tags = merge(
    local.common_tags,
    {
      "Name" = "${var.vpc_name}"
    },
  )
}