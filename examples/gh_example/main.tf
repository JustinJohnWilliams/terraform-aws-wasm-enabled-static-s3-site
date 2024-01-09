locals {
  aws_acount_id = ""
  region        = "us-east-2"
}

module "example_site" {
  source = "git@github.com:JustinJohnWilliams/wasm-enabled-static-s3-site-module.git//modules?ref=v1.1.1"

  project_name = "my.awesome.site"
  zip_dir      = "./site.zip"

  aws_account_id = local.aws_acount_id
  region         = local.region

  force_bucket_destroy = true
}

output "foo" {
  value = module.example_site
}
