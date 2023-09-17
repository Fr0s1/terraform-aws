output "aws_region" {
  description = "Details about selected AWS region"
  value       = data.aws_region.selected
}

output "all_available_aws_availability_zones_names" {
  description = "A list of the Availability Zone names available to the account"
  value       = data.aws_availability_zones.all_available.names
}

output "available_aws_availability_zones_names" {
  description = "A list of the Availability Zone names available to the account (not include local zone and Wavelength)"
  value       = data.aws_availability_zones.available.names
}

output "available_aws_availability_zones_zone_ids" {
  description = "A list of the Availability Zone IDs available to the account"
  value       = data.aws_availability_zones.available.zone_ids
}

output "aws_ami_ids" {
  description = "A list of AMI IDs"
  value       = { for k, v in data.aws_ami.this : k => tomap({ id = v.image_id, root_device_name = v.root_device_name }) }
}

output "caller_identity" {
  description = "Details about caller identity"
  value       = data.aws_caller_identity.this
}

output "aws_partition" {
  description = "Details about aws partition"
  value       = data.aws_partition.this
}
