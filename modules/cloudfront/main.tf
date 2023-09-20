resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = var.bucket_domain
    origin_id   = "myS3Origin"
  }

  tags = var.tags
}
