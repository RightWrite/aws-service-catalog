output "instance-assume-role-policy" {
  value = data.aws_iam_policy_document.instance-assume-role-policy.json
}
