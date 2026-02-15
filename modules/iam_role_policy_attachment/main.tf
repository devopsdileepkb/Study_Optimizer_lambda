resource "aws_iam_role_policy_attachment" "lambda_policy_attach" {
  role       = var.lambda_role_id
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}