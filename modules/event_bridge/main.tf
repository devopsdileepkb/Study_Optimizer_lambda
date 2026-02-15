resource "aws_cloudwatch_event_rule" "daily_trigger" {
  name                = "zip-csv-daily-${var.environment}"
  description         = "Triggers Lambda daily at 1 AM UTC"
  schedule_expression = var.schedule_expression
}

resource "aws_cloudwatch_event_target" "lambda_target" {
  rule      = aws_cloudwatch_event_rule.daily_trigger.name
  target_id = "zip-csv-lambda"
  arn       = var.lambda_function_arn
}