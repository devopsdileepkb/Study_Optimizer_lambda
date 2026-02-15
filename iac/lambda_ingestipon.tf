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