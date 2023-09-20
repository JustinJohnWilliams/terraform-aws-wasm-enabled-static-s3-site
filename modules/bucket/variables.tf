# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "bucket_name" {
  description = "the name of the s3 bucket to hold the static content"
  type        = string
}

variable "aws_account_id" {
  description = "The AWS Account ID to deploy the resources to"
  type        = string
}

variable "site_index_page" {
  description = "Specify the home or default page of the website"
  type        = string
}

variable "zip_dir" {
  description = "the zip dir of the site contents"
  type        = string
}

variable "tags" {
  type = map(any)
}
