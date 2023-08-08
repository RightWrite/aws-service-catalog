output "allow_read_only_access_iam_role_arn" {
  value = aws_iam_role.allow_read_only_access.*.arn
}