data "aws_ssoadmin_instances" "this" {}

resource "aws_identitystore_user" "this" {
  for_each          = { for user in var.users : user.user_name => user }
  identity_store_id = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]

  user_name    = each.value.user_name
  display_name = try(each.value.display_name, "${each.value.given_name} ${each.value.family_name}")
  title        = try(each.value.title, null)
  nickname     = try(each.value.nickname, null)

  name {
    given_name  = each.value.given_name
    family_name = each.value.family_name
    middle_name = try(each.value.middle_name, null)
  }

  dynamic "emails" {
    for_each = { for email in try(each.value.emails, []) : email.email => email }
    content {
      value   = emails.value.email
      type    = try(emails.value.type, null)
      primary = try(emails.value.primary, true)
    }
  }

  dynamic "phone_numbers" {
    for_each = { for ph in try(each.value.phone_numbers, []) : ph.value => ph }
    content {
      value   = try(phone_numbers.value.value, null)
      type    = try(phone_numbers.value.type, null)
      primary = try(phone_numbers.value.primary, null)
    }
  }

  dynamic "addresses" {
    for_each = { for a in try(each.value.addresses, []) : a.type => a }
    content {
      country        = try(addresses.value.country, null)
      formatted      = try(addresses.value.formatted, null)
      locality       = try(addresses.value.locality, null)
      postal_code    = try(addresses.value.postal_code, null)
      primary        = try(addresses.value.primary, null)
      region         = try(addresses.value.region, null)
      street_address = try(addresses.value.street_address, null)
      type           = try(addresses.value.type, null)
    }
  }
}
