output "group_id" {
  description = "The ID of the created group"
  value       = try(aws_identitystore_group.this[0].group_id, "")
}

output "membership_ids" {
  description = "The membership ids"
  value       = try(aws_identitystore_group_membership.this, {})
}
