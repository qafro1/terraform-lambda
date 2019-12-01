resource "aws_s3_bucket" "lambdas32019" {
    bucket = "lambdas32019"
}

resource "aws_s3_bucket_public_access_block" "lambdas32019" {
  bucket = "${aws_s3_bucket.bucket.id}"

  block_public_acls   = false
  block_public_policy = false
}