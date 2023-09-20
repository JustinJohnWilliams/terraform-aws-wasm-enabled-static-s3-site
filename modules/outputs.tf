output "bucket_info" {
  value = module.bucket.bucket_info
}

output "url" {
  value = module.cloudfront.cloudfront.domain_name
}
