# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "website_endpoint" {
  description = "the website endpoint (s3 website)"
  type        = string
}

variable "lambda_arn" {
  description = "the lambda for the cache policy"
  type        = string
}

variable "default_root_object" {
  description = "Object that you want CF to return when an end user reqeusts the root URL"
  type        = string
}

variable "tags" {
  type = map(any)
}
