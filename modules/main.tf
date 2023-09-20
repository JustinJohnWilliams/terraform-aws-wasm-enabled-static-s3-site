terraform {
  required_version = ">= 1.2.9"
  backend "s3" {}
}

module "bucket" {
  source = "./bucket"

  bucket_name = var.bucket_name
  tags        = local.tags
}
