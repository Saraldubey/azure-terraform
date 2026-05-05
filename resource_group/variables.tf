variable "name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure location for the resource group"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resource group"
  type        = map(string)
  default     = {}
}
