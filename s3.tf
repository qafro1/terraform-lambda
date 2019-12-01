resource "aws_s3_bucket" "bucketlambdas3" {
  bucket = "lambdas32019"
  acl    = "public"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}