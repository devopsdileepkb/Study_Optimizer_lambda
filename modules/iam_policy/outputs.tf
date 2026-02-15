output "lambda_policy_id" {
  description = "ID of the IAM policy attached to Lambda role"
  value       = aws_iam_role_policy.lambda_s3_policy.id
}