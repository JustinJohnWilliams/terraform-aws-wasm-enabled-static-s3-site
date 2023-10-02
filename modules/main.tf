terraform {
  required_version = ">= 1.2.9"
  backend "s3" {}
}

locals {
  bucket_name   = var.project_name
  function_name = "${var.project_name}-func"
}

module "bucket" {
  source = "./bucket"

  bucket_name     = local.bucket_name
  zip_dir         = var.zip_dir
  aws_account_id  = var.aws_account_id
  site_index_page = var.site_index_page

  tags = var.default_tags
}

module "lambda" {
  source = "./lambda"

  function_name  = local.function_name
  aws_account_id = var.aws_account_id

  tags = var.default_tags
}

module "cloudfront" {
  source = "./cloudfront"

  website_endpoint = module.bucket.bucket_info.website_endpoint
  lambda_arn       = "${module.lambda.lambda_info.arn}:${module.lambda.lambda_info.version}"

  tags = var.default_tags
}
