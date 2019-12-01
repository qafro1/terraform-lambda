resource "aws_s3_bucket" "s3_bucket2019" {
  bucket = "ytrewq"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}