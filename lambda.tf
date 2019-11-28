resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "web_lambda" {
  filename         = "hellocloudgurus.py"
  function_name    = "lambda_function.py"
  role             = "${aws_iam_role.lambda_role.arn}"
  handler          = "lambda_function.lambda_handler"
  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("hellocloudgurus.py"))}"
  source_code_hash = "${filebase64sha256("hellocloudgurus.py")}"
  runtime          = "python3.6"

  environment {
    variables = {
      dev = "demo"
    }
  }
}