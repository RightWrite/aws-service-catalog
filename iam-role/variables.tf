# ---------------------------------------------------------------------------------------------------------------------
# MANDATORY MODULE PARAMETERS
# These variables must be passed in by the operator.
# ---------------------------------------------------------------------------------------------------------------------
variable "aws_account_id" {
  description = "The ID of the AWS Account."
  type        = string
}

variable "create_read_only_role" {
  description = "Whether to create a read-only role for the account."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to apply to the IAM roles."
  type        = map(string)
  default     = {}
}
variable "read_only_access_iam_role_name" {
  description = "What to name the read-only access IAM role"
  type        = string
  default     = "allow-read-only-access-from-saml"
}