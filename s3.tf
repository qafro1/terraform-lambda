resource "aws_s3_bucket_object" "s3lambda" {
  bucket = "s3lambda"
  key    = "s3key"
  source = "/Users/gof/git/lambda/hellocloudgurus.py"
  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("/Users/gof/git/lambda/hellocloudgurus.py"))}"
  etag = "${filemd5("/Users/gof/git/lambda/hellocloudgurus.py")}"
}