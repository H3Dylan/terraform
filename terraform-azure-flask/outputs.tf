output "public_ip" {
  value       = azurerm_public_ip.public_ip.ip_address
  description = "IP publique"
}

output "vm_public_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}
