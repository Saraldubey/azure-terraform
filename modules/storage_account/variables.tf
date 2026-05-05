variable "name" {
  description = "Storage account name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name for the storage account"
  type        = string
}

variable "location" {
  description = "Azure region for the storage account"
  type        = string
}

variable "account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags for the storage account"
  type        = map(string)
  default     = {}
}
