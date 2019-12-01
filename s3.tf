resource "aws_s3_bucket" "qwerty2019" {
  bucket = "devs3lambda"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}