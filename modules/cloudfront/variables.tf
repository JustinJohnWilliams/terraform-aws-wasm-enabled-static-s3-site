# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "bucket_domain" {
  description = "the bucket domain to point the cf distro to"
  type        = string
}

variable "website_endpoint" {
  description = "the website endpoint (s3 website)"
  type        = string
}

variable "lambda_arn" {
  description = "the lambda for the cache policy"
  type        = string
}

variable "tags" {
  type = map(any)
}
