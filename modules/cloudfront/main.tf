resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = "amir-sucks-he-really-really-sucks.s3-website.us-east-2.amazonaws.com"
    origin_id   = "myS3Origin"
  }

}
