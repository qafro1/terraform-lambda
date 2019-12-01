resource "aws_s3_bucket" "bucketlambdas32019" {
  bucket = "lambdas32019"
  acl    = "public"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}