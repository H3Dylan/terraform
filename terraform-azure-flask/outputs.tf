output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "container_name" {
  value = azurerm_storage_container.static_files.name
}

output "public_ip" {
  value = azurerm_public_ip.flask_ip.ip_address
}
