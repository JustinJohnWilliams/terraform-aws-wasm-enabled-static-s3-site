output "lambda_info" {
  value = {
    id      = aws_lambda_function.lambda.id
    arn     = aws_lambda_function.lambda.arn
    role    = aws_lambda_function.lambda.role
    version = aws_lambda_function.lambda.version
  }
}
