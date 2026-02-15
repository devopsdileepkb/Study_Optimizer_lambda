output "s3_notification_id" {
  description = "ID of the S3 bucket notification"
  value       = aws_s3_bucket_notification.bucket_notify.id
}