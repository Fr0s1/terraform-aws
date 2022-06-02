variable "name" {
  description = "The name for the repository. This needs to be less than 100 characters"
  type        = string
}

variable "description" {
  description = "The description of the repository. This needs to be less than 1000 characters"
  type        = string
  default     = "The new codecommit repo"
}

variable "default_branch" {
  description = "The default branch of the repository. The branch specified here needs to exist"
  type        = string
  default     = null
}

variable "tags" {
  description = "The default branch of the repository. The branch specified here needs to exist"
  type        = map(string)
  default     = {}
}
