resource "aws_kms_key" "lambda_key" {
  description             = "KMS key for encrypting Lambda environment variables and S3 data"
  deletion_window_in_days = 30
  enable_key_rotation     = true
}

resource "aws_kms_alias" "lambda_key_alias" {
  name          = "alias/lambda-key"
  target_key_id = aws_kms_key.lambda_key.id
}