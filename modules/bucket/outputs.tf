output "bucket_info" {
  value = {
    id               = aws_s3_bucket.bucket.id
    arn              = aws_s3_bucket.bucket.arn
    website_endpoint = aws_s3_bucket_website_configuration.website.website_endpoint
  }
}
