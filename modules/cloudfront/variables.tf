# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "bucket_domain" {
  description = "the bucket domain to point the cf distro to"
  type        = string
}

variable "tags" {
  type = map(any)
}
