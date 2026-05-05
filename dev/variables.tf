variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "storage_account_name" {
  description = "Storage account name"
  type        = string
}

variable "storage_account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
}

variable "virtual_network_name" {
  description = "Virtual network name"
  type        = string
}

variable "address_space" {
  description = "Virtual network address space"
  type        = list(string)
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_address_prefix" {
  description = "Subnet address prefix"
  type        = list(string)
}

variable "public_ip_name" {
  description = "Public IP name"
  type        = string
}

variable "network_security_group_name" {
  description = "Network security group name"
  type        = string
}

variable "network_interface_name" {
  description = "Network interface name"
  type        = string
}

variable "vm_name" {
  description = "Linux VM name"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_F2"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
}

variable "os_disk_caching" {
  description = "OS disk caching type"
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "OS disk storage account type"
  type        = string
  default     = "Standard_LRS"
}

variable "image_publisher" {
  description = "VM image publisher"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "VM image offer"
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "VM image SKU"
  type        = string
  default     = "16.04-LTS"
}

variable "image_version" {
  description = "VM image version"
  type        = string
  default     = "latest"
}

variable "tags" {
  description = "Tag map for the environment"
  type        = map(string)
}
