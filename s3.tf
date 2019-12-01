resource "aws_s3_bucket" "qwerty2019" {
  bucket = "qwertyuio"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}