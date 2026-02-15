output "s3_permission_id" {
  value = aws_lambda_permission.allow_s3.id
}

output "eventbridge_permission_id" {
  value = aws_lambda_permission.allow_eventbridge.id
}