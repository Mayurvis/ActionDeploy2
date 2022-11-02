provider "aws" {
  region = "ap-south-1"
}

resource "aws_lambda_function" "sre_lambda" {
  function_name = "lambda_handler"
  role          = "role arn"
  #   handler       = "lambda_function.lambda_handler"
  #   runtime       = "python3.8"
  image_uri    = ""
  package_type = "Image"
  memory_size  = "128"
  timeout      = "3"
}
