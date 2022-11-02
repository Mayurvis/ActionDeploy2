provider "aws" {
  region = "ap-south-1"
}

resource "aws_lambda_function" "sre_lambda" {
  function_name = "intern-lambda_handler"
  role          = "arn:aws:iam::429134309155:role/lambda_dynamo_db_role"
  #   handler       = "lambda_function.lambda_handler"
  #   runtime       = "python3.8"
  image_uri    = "429134309155.dkr.ecr.ap-south-1.amazonaws.com/kaisehua:v1"
  package_type = "Image"
  memory_size  = "128"
  timeout      = "3"
}