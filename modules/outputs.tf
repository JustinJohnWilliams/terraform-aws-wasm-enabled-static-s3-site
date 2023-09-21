output "bucket_info" {
  value = {
    name             = module.bucket.bucket
    domain_name      = module.bucket.bucket_domain_name
    website_endpoint = module.bucket.website_endpoint
  }

}
output "url" {
  value = module.cloudfront.cloudfront.domain_name
}
