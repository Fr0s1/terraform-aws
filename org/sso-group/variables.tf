variable "created" {
  description = "Whether to create group"
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the group"
  type        = string
}

variable "description" {
  description = "The description of the group"
  type        = string
  default     = ""
}

variable "users" {
  description = "A list of users by email or user_name"
  type        = list(string)
  default     = []
}
