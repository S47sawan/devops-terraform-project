####################################################################################################################
# Terraform Backend, S3 Bucket
#####################################################################################################################
terraform {
  backend "s3" {
    bucket         = "devops-terraform-state-smihah"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "dynamodb-state-locking"
    encrypt        = true
  }
}
