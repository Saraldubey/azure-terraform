variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "address_space" {
  description = "Virtual network address space"
  type        = list(string)
}

variable "location" {
  description = "Azure region for networking resources"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name for networking resources"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_address_prefix" {
  description = "Subnet address prefixes"
  type        = list(string)
}

variable "public_ip_name" {
  description = "Public IP resource name"
  type        = string
}

variable "public_ip_allocation_method" {
  description = "Public IP allocation method"
  type        = string
  default     = "Static"
}

variable "public_ip_sku" {
  description = "Public IP SKU"
  type        = string
  default     = "Standard"
}

variable "network_security_group_name" {
  description = "Network security group name"
  type        = string
}

variable "network_interface_name" {
  description = "Network interface name"
  type        = string
}

variable "tags" {
  description = "Tags for networking resources"
  type        = map(string)
  default     = {}
}
