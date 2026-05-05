variable "name" {
  description = "Virtual machine name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name for the VM"
  type        = string
}

variable "location" {
  description = "Azure region for the VM"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_F2"
}

variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
}

variable "network_interface_ids" {
  description = "Network interface IDs attached to this VM"
  type        = list(string)
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
  description = "Publisher for the VM image"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Offer for the VM image"
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "SKU for the VM image"
  type        = string
  default     = "16.04-LTS"
}

variable "image_version" {
  description = "Version for the VM image"
  type        = string
  default     = "latest"
}

variable "tags" {
  description = "Tags for the VM"
  type        = map(string)
  default     = {}
}
