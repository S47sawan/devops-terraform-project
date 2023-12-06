#-------------------------------------------------------------------------------------
# Resource DynamoDB
#---------------------------------------------------------------------------------------
resource "aws_dynamodb_table" "state-lock" {
  name         = "dynamodb-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"


  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "dev-state-lock"
  }
}