resource "aws_s3_bucket" "bucket_tf" {
  bucket = "lambdas32019"
  acl    = "public"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}