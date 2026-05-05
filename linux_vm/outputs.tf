output "id" {
  description = "Linux VM ID"
  value       = azurerm_linux_virtual_machine.this.id
}

output "name" {
  description = "Linux VM name"
  value       = azurerm_linux_virtual_machine.this.name
}
