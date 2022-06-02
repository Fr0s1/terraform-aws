## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_codecommit_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codecommit_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | The default branch of the repository. The branch specified here needs to exist | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the repository. This needs to be less than 1000 characters | `string` | `"The new codecommit repo"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name for the repository. This needs to be less than 100 characters | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | The default branch of the repository. The branch specified here needs to exist | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the repository |
| <a name="output_clone_url_http"></a> [clone\_url\_http](#output\_clone\_url\_http) | The URL to use for cloning the repository over HTTPS |
| <a name="output_clone_url_ssh"></a> [clone\_url\_ssh](#output\_clone\_url\_ssh) | The URL to use for cloning the repository over SSH |
| <a name="output_id"></a> [id](#output\_id) | The ID of the repository |
| <a name="output_tags_all"></a> [tags\_all](#output\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider |
