module "iam_policies_read_only" {
  source = "../iam-policies"
}


resource "aws_iam_role" "allow_read_only_access" {
  count              = var.create_read_only_role ? 1 : 0
  name               = var.read_only_access_iam_role_name
  description        = "Allow read only access to all resources"
  tags               = var.tags
  assume_role_policy = module.iam_policies_read_only.instance-assume-role-policy
}

