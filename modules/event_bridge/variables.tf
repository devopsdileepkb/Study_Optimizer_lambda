variable "environment" {
  type        = string
  description = "Deployment environment"
}

variable "schedule_expression" {
  type        = string
  default     = "cron(0 1 * * ? *)" # 1 AM UTC daily
}

variable "lambda_function_arn" {
  type        = string
  description = "ARN of the Lambda function"
}