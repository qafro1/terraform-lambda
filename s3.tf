resource "aws_s3_bucket" "s32019" {
  bucket = "qwertys3"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}