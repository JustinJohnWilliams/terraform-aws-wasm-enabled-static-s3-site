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
  aws_account_id  = var.aws_account_id
  site_index_page = var.site_index_page
  tags            = local.tags
}

module "lambd" {
  source = "./lambda"
}
