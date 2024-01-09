terraform {
  required_version = ">= 1.2.9"
}

locals {
  bucket_name   = var.project_name
  function_name = "${replace(var.project_name, ".", "-")}-func"
}

module "bucket" {
  source = "./modules/bucket"

  bucket_name     = local.bucket_name
  zip_dir         = var.zip_dir
  aws_account_id  = var.aws_account_id
  site_index_page = var.site_index_page
  force_destroy   = var.force_bucket_destroy

  tags = var.default_tags
}

module "lambda" {
  source = "./modules/lambda"

  function_name  = local.function_name
  aws_account_id = var.aws_account_id

  tags = var.default_tags
}

module "cloudfront" {
  source = "./modules/cloudfront"

  website_endpoint    = module.bucket.bucket_info.website_endpoint
  lambda_arn          = "${module.lambda.lambda_info.arn}:${module.lambda.lambda_info.version}"
  default_root_object = var.site_index_page

  tags = var.default_tags
}
