terraform {
  required_version = ">= 1.2.9"
  backend "s3" {}
}

locals {
  tags = merge(var.default_tags, var.tags)
}

module "bucket" {
  source = "./bucket"

  bucket_name     = var.bucket_name
  zip_dir         = var.zip_dir
  aws_account_id  = var.aws_account_id
  site_index_page = var.site_index_page
  tags            = local.tags
}

module "lambda" {
  source = "./lambda"

  function_name  = var.function_name
  aws_account_id = var.aws_account_id
  tags           = local.tags
}

module "cloudfront" {
  source = "./cloudfront"

  website_endpoint = module.bucket.bucket_info.website_endpoint
  lambda_arn       = "${module.lambda.lambda.arn}:${module.lambda.lambda.version}"

  tags = local.tags
}
