locals {
  lambda_role_name = "${var.function_name}-lambda-role"
  lambda_zip_file  = "${path.module}/default_lambda.zip"
}

resource "aws_lambda_function" "lambda" {
  function_name    = var.function_name
  filename         = local.lambda_zip_file
  role             = "amir-sucks-he-really-really-sucks-func-role-9epx0xmv" #TOD: add module for IAM
  handler          = "index.handler"
  source_code_hash = filebase64sha256(local.lambda_zip_file)

  runtime     = "nodejs14.x"
  timeout     = 10
  memory_size = 128

  lifecycle {
    ignore_changes = [source_code_hash, handler, environment]
  }

  tags = local.tags
}
