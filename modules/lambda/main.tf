locals {
  lambda_role_name = "${var.function_name}-lambda-role"
  lambda_zip_file  = "${path.module}/lambda.zip"
}

resource "aws_lambda_function" "lambda" {
  provider = aws.east

  function_name    = var.function_name
  filename         = local.lambda_zip_file
  role             = aws_iam_role.lambda.arn
  handler          = "index.handler"
  source_code_hash = filebase64sha256(local.lambda_zip_file)

  runtime     = "nodejs18.x"
  timeout     = 3
  memory_size = 128
  #publish     = true

  lifecycle {
    ignore_changes = [source_code_hash, handler, environment]
  }

  tags = var.tags
}

resource "aws_iam_role" "lambda" {
  name = var.function_name
  path = "/service-role/"

  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role_policy.json

  inline_policy {
    name   = "${var.function_name}-lambda-policy"
    policy = data.aws_iam_policy_document.lambda_policy.json
  }

  tags = var.tags
}

data "aws_iam_policy_document" "lambda_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com", "edgelambda.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "lambda_policy" {
  statement {
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
      "logs:AssociateKmsKey"
    ]
    resources = ["*"]
  }
}
