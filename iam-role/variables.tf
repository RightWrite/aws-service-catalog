# ---------------------------------------------------------------------------------------------------------------------
# MANDATORY MODULE PARAMETERS
# These variables must be passed in by the operator.
# ---------------------------------------------------------------------------------------------------------------------
variable "aws_account_id" {
  description = "The ID of the AWS Account."
  type        = string
}

variable "create_read_only_role" {
  default = ""
}

variable "tags" {
  description = "A map of tags to apply to the IAM roles."
  type        = map(string)
  default     = {}
}
