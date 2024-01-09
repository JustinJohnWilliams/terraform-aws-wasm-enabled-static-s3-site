locals {
  aws_acount_id = "802818746700"
  region        = "us-east-2"
}

module "example_site" {
  source = "git@github.com:JustinJohnWilliams/wasm-enabled-static-s3-site-module.git//modules?ref=v1.0.8"

  project_name = "my.awesome.site"
  zip_dir      = "./site.zip"

  aws_account_id = local.aws_acount_id
  region         = local.region
}

output "foo" {
  value = module.example_site
}
