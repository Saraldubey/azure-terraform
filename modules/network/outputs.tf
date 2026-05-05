output "virtual_network_id" {
  description = "Virtual network ID"
  value       = azurerm_virtual_network.this.id
}

output "subnet_id" {
  description = "Subnet ID"
  value       = azurerm_subnet.this.id
}

output "network_interface_id" {
  description = "Network interface ID"
  value       = azurerm_network_interface.this.id
}

output "network_interface_private_ip" {
  description = "Private IP address assigned to the network interface"
  value       = azurerm_network_interface.this.private_ip_address
}

output "public_ip_address" {
  description = "Public IP allocated to the NIC"
  value       = azurerm_public_ip.this.ip_address
}

output "network_security_group_id" {
  description = "Network security group ID"
  value       = azurerm_network_security_group.this.id
}
