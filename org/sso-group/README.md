<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.41.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.41.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_identitystore_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/identitystore_group) | resource |
| [aws_identitystore_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/identitystore_group_membership) | resource |
| [aws_identitystore_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/identitystore_user) | data source |
| [aws_ssoadmin_instances.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssoadmin_instances) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_created"></a> [created](#input\_created) | Whether to create group | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the group | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the group | `string` | n/a | yes |
| <a name="input_users"></a> [users](#input\_users) | A list of users by email or user\_name | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_group_id"></a> [group\_id](#output\_group\_id) | The ID of the created group |
| <a name="output_group_name"></a> [group\_name](#output\_group\_name) | The name of the created group |
| <a name="output_membership_ids"></a> [membership\_ids](#output\_membership\_ids) | The membership ids |
<!-- END_TF_DOCS -->
