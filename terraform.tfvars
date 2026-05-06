# Azure Resource Group
resource_group_name = "stock-price-monitoring-dev"
location            = "East US"

# Storage Account
storage_account_name     = "examplestorageacct"
storage_account_tier     = "Standard"
storage_replication_type = "LRS"

# Virtual Network and Subnet
virtual_network_name  = "example-network"
address_space         = ["10.0.0.0/16"]
subnet_name           = "internal"
subnet_address_prefix = ["10.0.2.0/24"]

# Network Interface
network_interface_name = "example-nic"

# Virtual Machine
vm_name                      = "example-machine"
vm_size                      = "Standard_F2"
admin_username               = "adminuser"
ssh_public_key_path          = "~/.ssh/id_rsa.pub"
os_disk_caching              = "ReadWrite"
os_disk_storage_account_type = "Standard_LRS"

# Image Details
image_publisher = "Canonical"
image_offer     = "UbuntuServer"
image_sku       = "16.04-LTS"
image_version   = "latest"

# Tags
tags = {
  Environment = "Development"
  Project     = "Example"
  ManagedBy   = "Terraform"
}
