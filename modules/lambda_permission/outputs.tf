output "s3_permission_id" {
  description = "Permission ID for S3 invoking Lambda"
  value       = aws_lambda_permission.allow_s3.id
}

output "eventbridge_permission_id" {
  description = "Permission ID for EventBridge invoking Lambda"
  value       = aws_lambda_permission.allow_eventbridge.id
}