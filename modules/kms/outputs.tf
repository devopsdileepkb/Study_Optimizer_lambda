output "kms_key_id" {
  value = aws_kms_key.lambda_key.id
}

output "kms_key_arn" {
  value = aws_kms_key.lambda_key.arn
}

output "kms_alias_name" {
  value = aws_kms_alias.lambda_key_alias.name
}