resource "aws_s3_bucket_notification" "bucket_notify" {
  bucket = var.bucket_name

  lambda_function {
    lambda_function_arn = var.lambda_function_arn
    events              = ["s3:ObjectCreated:*"]
    filter_prefix       = var.filter_prefix
    filter_suffix       = var.filter_suffix
  }

  depends_on = [var.lambda_permission_id]
}

resource "aws_s3_bucket" "data_bucket" {
  bucket = var.bucket_name

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kms_key_id   # NEW
        sse_algorithm     = "aws:kms"
      }
    }
  }
}