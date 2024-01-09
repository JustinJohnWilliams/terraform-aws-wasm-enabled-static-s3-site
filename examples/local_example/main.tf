locals {
  aws_acount_id = ""
  region        = "us-east-2"
}

module "example_site" {
  source = "../../"

  project_name = "myawesome.site.org"
  zip_dir      = "../site.zip"

  aws_account_id = local.aws_acount_id
  region         = local.region

  force_bucket_destroy = true
}

output "data" {
  value = module.example_site
}
