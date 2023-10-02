locals {
  aws_acount_id = ""
  env           = "sandbox"
  region        = "us-east-2"
  tags = {
    "terraform-manaed" = true
  }
}

module "example_site" {
  source = "../modules"

  project_name = "my_awesome_site"
  zip_dir      = "./site.zip"

  aws_account_id = local.aws_acount_id
  region         = local.region
  env            = local.env
  default_tags   = local.tags
}
