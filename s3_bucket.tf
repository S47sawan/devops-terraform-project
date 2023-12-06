#----------------------------------------------------------------------------------------
# Variables S3 Bucket.
#----------------------------------------------------------------------------------------
# variable "bucket_name" {
#     description = "Name of the S3 bucket that will store the remote state file" 
#     default = ""
# }
#----------------------------------------------------------------------------------------
# Create resource S3 Bucket.
#----------------------------------------------------------------------------------------

resource "aws_s3_bucket" "terraform_backend_s3_bucket" {
  bucket = "devops-terraform-state-smihah"
  
  tags = {
    Name = "devops-terraform-state-smihah"
  }
}
