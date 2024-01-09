locals {
  aws_acount_id = ""
  region        = "us-east-2"
}

module "example_site" {
  source = "../../"

  project_name = "my_awesome_site"
  zip_dir      = "../site.zip"

  aws_account_id = local.aws_acount_id
  region         = local.region
}
