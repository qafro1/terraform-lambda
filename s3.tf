resource "aws_s3_bucket" "s3_buck2019" {
  bucket = "helloguru12345"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}