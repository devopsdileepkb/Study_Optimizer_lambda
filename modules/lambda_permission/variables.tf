variable "lambda_function_name" {
  type        = string
  description = "Name of the Lambda function"
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "eventbridge_rule_arn" {
  type        = string
  description = "ARN of the EventBridge rule"
}