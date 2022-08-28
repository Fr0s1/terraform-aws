variable "domain_name" {
  description = "The domain name of CloudFlare DNS records to register with this CloudFront distribution"
  type        = string
}

variable "ses_domain" {
  description = "The domain is used for SES. The ses_domain is sub-domain of the domain_name. Default is ''"
  type        = string
  default     = ""
}

variable "cf_email" {
  description = "The email associated with the account."
  type        = string
  default     = null
}

variable "cf_api_key" {
  description = "The Cloudflare API key."
  type        = string
  default     = null
}

variable "cf_api_token" {
  description = "The Cloudflare API Token. This is an alternative to email+api_key. If both are specified, api_token will be used over email+api_key fields."
  type        = string
  default     = null
}
