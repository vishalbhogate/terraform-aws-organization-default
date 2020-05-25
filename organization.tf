resource "aws_organizations_organization" "org" {
  count = var.already_exists ? 0 : 1
  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
  ]

  feature_set          = "ALL"
  enabled_policy_types = ["SERVICE_CONTROL_POLICY"]
}

data aws_organizations_organization "existing" {
  count = var.already_exists ? 1 : 0
}