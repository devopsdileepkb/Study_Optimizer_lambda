module "iam_role" {
  source      = "../modules/iam_role"
  environment = var.environment
}

module "iam_policy" {
  source        = "../modules/iam_policy"
  environment   = var.environment
  bucket_name   = var.bucket_name
  lambda_role_id = module.iam_role.lambda_role_id
}

module "iam_role_policy_attachment" {
  source        = "../modules/iam_role_policy_attachment"
  lambda_role_id = module.iam_role.lambda_role_id
}

module "lambda" {
  source          = "../modules/lambda"
  environment     = var.environment
  region          = var.region
  bucket_name     = var.bucket_name
  lambda_role_arn = module.iam_role.lambda_role_arn
  lambda_name     = "zip-csv-lambda-${var.environment}"
}

module "lambda_permission" {
  source               = "../modules/lambda_permission"
  lambda_function_name = module.lambda.lambda_name
  bucket_name          = var.bucket_name
  eventbridge_rule_arn = module.eventbridge.event_rule_arn
}

module "s3_notification" {
  source              = "../modules/s3_notification"
  bucket_name         = var.bucket_name
  lambda_function_arn = module.lambda.lambda_arn
  lambda_permission_id = module.lambda_permission.s3_permission_id
}

module "eventbridge" {
  source              = "../modules/eventbridge"
  environment         = var.environment
  schedule_expression = "cron(0 1 * * ? *)"
  lambda_function_arn = module.lambda.lambda_arn
}