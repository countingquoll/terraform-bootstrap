variable "name" {
  description = "Name. Used for the resource-group and other identifiers."
  type        = string
  default     = "terraform-state"
}

variable "location" {
  description = "Azure region to deploy the launchpad in the short form."
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "Optional map of key:value tags."
  type        = map
  default     = {}
}

variable "terraform_state_group" {
  description = "Name of the AAD security group for managing Terraform state and key vault secrets."
  type        = string
  default     = ""
}

variable "service_principal_name" {
  description = "Name for the terraform state service principal. Defaults to var.name."
  type        = string
  default     = ""
}

variable "service_principal_suffix" {
  description = "Boolean to suffix unique string to service_principal_name."
  type        = bool
  default     = true
}

variable "service_principal_rbac_assignments" {
  description = "Optional list of additional roles and scopes for the service principal."
  type = list(object({
    role  = string,
    scope = string
  }))
  default = []
}