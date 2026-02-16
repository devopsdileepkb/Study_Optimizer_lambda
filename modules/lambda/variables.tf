variable "environment" {
  type        = string
}

variable "region" {
  type        = string
}

variable "bucket_name" {
  type        = string
}

variable "lambda_role_arn" {
  type        = string
}

variable "lambda_name" {
  type        = string
  description = "Name of the Lambda function"
}

variable "kms_key_arn" {
  type        = string
  default     = null
  description = "Optional KMS key ARN for Lambda encryption"
}