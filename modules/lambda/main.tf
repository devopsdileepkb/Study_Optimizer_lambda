resource "aws_lambda_function" "zip_csv_lambda" {
  function_name = local.lambda_name
  role          = var.lambda_role_arn
  handler       = "lambda.handler"
  runtime       = "python3.9"
  timeout       = 60
  memory_size   = 512

  filename = "${path.module}/../../src/lambda/lambda.zip"

  environment {
    variables = {
      ENVIRONMENT = var.environment
      REGION      = var.region
      BUCKET      = var.bucket_name
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}