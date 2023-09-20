# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "bucket_name" {
  description = "the name of the s3 bucket to hold the static content"
  type        = string
}

variable "tags" {
  type = map(any)
}
