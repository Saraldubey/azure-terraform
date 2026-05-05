output "resource_group_id" {
  description = "ID of the created resource group"
  value       = module.resource_group.id
}

output "storage_account_name" {
  description = "Name of the created storage account"
  value       = module.storage_account.name
}

output "storage_primary_blob_endpoint" {
  description = "Primary blob endpoint for the storage account"
  value       = module.storage_account.primary_blob_endpoint
}

output "public_ip_address" {
  description = "Public IP address for the VM"
  value       = module.network.public_ip_address
}

output "vm_id" {
  description = "ID of the deployed Linux VM"
  value       = module.linux_vm.id
}

output "vm_name" {
  description = "Name of the deployed Linux VM"
  value       = module.linux_vm.name
}
