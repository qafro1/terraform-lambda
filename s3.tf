resource "aws_s3_bucket" "zxcvb" {
  bucket = "helloguru12345"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}