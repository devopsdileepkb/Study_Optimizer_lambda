variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "lambda_function_arn" {
  type        = string
  description = "ARN of the Lambda function"
}

variable "lambda_permission_id" {
  type        = string
  description = "Lambda permission resource ID"
}

variable "filter_prefix" {
  type        = string
  default     = "mydir/"
}

variable "filter_suffix" {
  type        = string
  default     = ".csv"
}