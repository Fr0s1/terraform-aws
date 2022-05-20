## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.55.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_cache_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_cache_policy) | data source |
| [aws_cloudfront_origin_request_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_origin_request_policy) | data source |
| [aws_cloudfront_response_headers_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_response_headers_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cache_policy_name"></a> [cache\_policy\_name](#input\_cache\_policy\_name) | A unique name to identify the cache policy. | `string` | `"Managed-CachingDisabled"` | no |
| <a name="input_request_policy_name"></a> [request\_policy\_name](#input\_request\_policy\_name) | Unique name to identify the origin request policy. | `string` | `"Managed-AllViewer"` | no |
| <a name="input_response_headers_policy_name"></a> [response\_headers\_policy\_name](#input\_response\_headers\_policy\_name) | Unique name to identify the origin response headers policy. | `string` | `"Managed-SecurityHeadersPolicy"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudfront_cache_policy_id"></a> [cloudfront\_cache\_policy\_id](#output\_cloudfront\_cache\_policy\_id) | The identifier for the cache policy. |
| <a name="output_cloudfront_request_policy_id"></a> [cloudfront\_request\_policy\_id](#output\_cloudfront\_request\_policy\_id) | The identifier for the origin request policy. |
| <a name="output_cloudfront_response_headers_policy_id"></a> [cloudfront\_response\_headers\_policy\_id](#output\_cloudfront\_response\_headers\_policy\_id) | The identifier for the origin response headers policy. |
