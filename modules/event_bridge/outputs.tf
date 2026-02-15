output "event_rule_arn" {
  value = aws_cloudwatch_event_rule.daily_trigger.arn
}

output "event_target_id" {
  value = aws_cloudwatch_event_target.lambda_target.id
}