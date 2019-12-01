resource "aws_s3_bucket" "owerri" {
  bucket = "devs3lambda"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}