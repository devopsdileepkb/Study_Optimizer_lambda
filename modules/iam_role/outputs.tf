output "lambda_role_arn" {
  description = "ARN of the IAM role for Lambda"
  value       = aws_iam_role.lambda_role.arn
}

output "lambda_role_id" {
  description = "ID of the IAM role for Lambda"
  value       = aws_iam_role.lambda_role.id
}