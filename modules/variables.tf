# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "region" {
  description = "which aws region to use"
  type        = string
}

variable "aws_account_id" {
  description = "The AWS Account ID to deploy the resources to"
  type        = string
}

variable "project_name" {
  description = "the project name. this will be usedfor the s3 bucket name and the lambda name"
  type        = string
}

variable "zip_dir" {
  description = "the zip dir of the site contents"
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------
variable "site_index_page" {
  description = "Specify the home or default page of the website"
  default     = "index.html"
  type        = string
}

variable "env" {
  description = "the environment name [dev, stage, prod]"
  type        = string
  default     = ""
}

variable "force_bucket_destroy" {
  description = "Whether or not to delete all bucket objects on destroy"
  type        = boo
  default     = false
}

variable "default_tags" {
  type = map(any)
  default = {
    "terraform-managed" = true
  }
}
