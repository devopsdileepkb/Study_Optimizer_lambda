data "archive_file" "lambda_zip" {
  type        = "zip"
  source_file = "${path.module}/../../src/lambda/lambda.py"
  output_path = "${path.module}/../../src/lambda/lambda.zip"
}

resource "aws_lambda_function" "zip_csv_lambda" {
  function_name = local.lambda_name
  role          = var.lambda_role_arn
  handler       = "lambda.handler"
  runtime       = "python3.9"
  timeout       = 60
  memory_size   = 512

  # Use the archive_file output instead of hardcoded path
  filename = data.archive_file.lambda_zip.output_path

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