resource "aws_s3_bucket" "bucket_tf" {
  bucket = "lambdaS32019"
  acl    = "public"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}