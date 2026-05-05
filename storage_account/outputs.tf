output "id" {
  description = "Storage account ID"
  value       = azurerm_storage_account.this.id
}

output "name" {
  description = "Storage account name"
  value       = azurerm_storage_account.this.name
}

output "primary_blob_endpoint" {
  description = "Primary Blob endpoint for the storage account"
  value       = azurerm_storage_account.this.primary_blob_endpoint
}
