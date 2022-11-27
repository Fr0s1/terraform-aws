data "aws_ssoadmin_instances" "this" {}

locals {
  identity_store_id = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]
}

data "aws_identitystore_user" "this" {
  for_each = var.created ? toset(var.users) : []

  identity_store_id = local.identity_store_id
  alternate_identifier {
    unique_attribute {
      attribute_path  = "UserName"
      attribute_value = each.value
    }
  }
}

resource "aws_identitystore_group" "this" {
  count             = var.created ? 1 : 0
  display_name      = var.name
  description       = coalesce(var.description, "The group of ${var.name}")
  identity_store_id = local.identity_store_id
}

resource "aws_identitystore_group_membership" "this" {
  for_each = var.created ? toset(var.users) : []

  identity_store_id = local.identity_store_id
  group_id          = try(aws_identitystore_group.this[0].group_id, "")
  member_id         = try(data.aws_identitystore_user.this[each.value].user_id, "")
}
