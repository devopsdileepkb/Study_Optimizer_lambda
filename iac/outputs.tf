output "lambda_role_arn" {
  value = module.iam_role.lambda_role_arn
}

output "lambda_function_name" {
  value = module.lambda.lambda_function_name
}

output "lambda_function_arn" {
  value = module.lambda.lambda_function_arn
}