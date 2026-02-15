output "lambda_role_arn" {
  value = module.iam_role.lambda_role_arn
}

output "lambda_function_name" {
  value = module.lambda.lambda_name
}

output "lambda_function_arn" {
  value = module.lambda.lambda_arn
}

output "s3_notification_id" {
  value = module.s3_notification.s3_notification_id
}

output "event_rule_arn" {
  value = module.event_bridge.event_rule_arn
}