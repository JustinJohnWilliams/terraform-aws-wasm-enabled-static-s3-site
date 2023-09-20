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

variable "env" {
  description = "the environment name [dev, stage, prod]"
  type        = string
}

<<<<<<< HEAD
variable "bucket_name" {
  description = "the name of the s3 bucket to hold the static content"
  type        = string
}

variable "zip_dir" {
  description = "the zip dir of the site contents"
  type        = string
}

variable "function_name" {
  description = "the name of the function"
=======
variable "project_name" {
  description = "the project name"
>>>>>>> 9ae2c89 (make it purdy)
  type        = string
}

variable "default_tags" {
  type = map(any)
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

variable "tags" {
  type    = map(any)
  default = {}
}
