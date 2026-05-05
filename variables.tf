variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Name of the storage account (must be globally unique and lowercase)"
  type        = string
  default     = "examplestorageacct"
}

variable "storage_account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard", "Premium"], var.storage_account_tier)
    error_message = "Storage account tier must be either Standard or Premium."
  }
}

variable "storage_replication_type" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"

  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS"], var.storage_replication_type)
    error_message = "Valid replication types are LRS, GRS, RAGRS, or ZRS."
  }
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "example-network"
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "internal"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "network_interface_name" {
  description = "Name of the network interface"
  type        = string
  default     = "example-nic"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "example-machine"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_F2"
}

variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
  default     = "adminuser"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "os_disk_caching" {
  description = "Caching type for the OS disk"
  type        = string
  default     = "ReadWrite"

  validation {
    condition     = contains(["None", "ReadOnly", "ReadWrite"], var.os_disk_caching)
    error_message = "OS disk caching must be None, ReadOnly, or ReadWrite."
  }
}

variable "os_disk_storage_account_type" {
  description = "Storage account type for the OS disk"
  type        = string
  default     = "Standard_LRS"

  validation {
    condition     = contains(["Standard_LRS", "StandardSSD_LRS", "Premium_LRS", "UltraSSD_LRS"], var.os_disk_storage_account_type)
    error_message = "Valid storage account types are Standard_LRS, StandardSSD_LRS, Premium_LRS, or UltraSSD_LRS."
  }
}

variable "image_publisher" {
  description = "Publisher of the VM image"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Offer of the VM image"
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "SKU of the VM image"
  type        = string
  default     = "16.04-LTS"
}

variable "image_version" {
  description = "Version of the VM image"
  type        = string
  default     = "latest"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "Development"
    Project     = "Example"
  }
}
