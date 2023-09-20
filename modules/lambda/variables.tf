variable "aws_account_id" {
  description = "The AWS Account ID to deploy the resources to"
  type        = string
}

variable "function_name" {
  description = "the name of the function"
  type        = string
}

variable "tags" {
  type = map(any)
}
