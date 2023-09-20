output "bucket_info" {
  value = {
    name             = module.bucket.bucket.id
    domain_name      = module.bucket.bucket.bucket_domain_name
    website_endpoint = module.bucket.bucket.website_endpoint
  }

}
output "url" {
  value = module.cloudfront.cloudfront.domain_name
}
