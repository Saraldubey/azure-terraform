module "resource_group" {
  source = "../../modules/resource_group"

  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  source = "../../modules/storage_account"

  name                     = var.storage_account_name
  resource_group_name      = module.resource_group.name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
  tags                     = var.tags
}

module "network" {
  source = "../../modules/network"

  vnet_name                   = var.virtual_network_name
  address_space               = var.address_space
  location                    = var.location
  resource_group_name         = module.resource_group.name
  subnet_name                 = var.subnet_name
  subnet_address_prefix       = var.subnet_address_prefix
  public_ip_name              = var.public_ip_name
  network_security_group_name = var.network_security_group_name
  network_interface_name      = var.network_interface_name
  tags                        = var.tags
}

module "linux_vm" {
  source = "../../modules/linux_vm"

  name                         = var.vm_name
  resource_group_name          = module.resource_group.name
  location                     = var.location
  vm_size                      = var.vm_size
  admin_username               = var.admin_username
  ssh_public_key_path          = var.ssh_public_key_path
  network_interface_ids        = [module.network.network_interface_id]
  os_disk_caching              = var.os_disk_caching
  os_disk_storage_account_type = var.os_disk_storage_account_type
  image_publisher              = var.image_publisher
  image_offer                  = var.image_offer
  image_sku                    = var.image_sku
  image_version                = var.image_version
  tags                         = var.tags
}
