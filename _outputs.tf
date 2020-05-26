output "id" {
  value       = try(aws_organizations_organization.org[0].id, data.aws_organizations_organization.existing[0].id)
  description = "ID of organization created"
}

output "roots_id" {
  value       = try(aws_organizations_organization.org[0].roots, data.aws_organizations_organization.existing[0].roots)
  description = "Roots of organization created"
}

output "name" {
  value = var.name
}
