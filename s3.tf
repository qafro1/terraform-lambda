resource "aws_s3_bucket" "tfs3lambda" {
  bucket = "devs3lambda"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}