resource "aws_s3_bucket" "s3_buck2019" {
  bucket = "helloguru12345"
  acl    = "private"

  tags = {
    Name        = "lambdas3"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_object" "s3_buck2019" {
  bucket = "helloguru12345"
  key    = "new_object_key"
  source = "index.html"
  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = "${filemd5("index.html")}"
}