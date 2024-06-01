output "resource_group_name" {
  description = "club-200"
  value       = azurerm_resource_group.club-100.name
}

output "storage_account_name" {
  description = "redwolves"
  value       = azurerm_storage_account.sa.name
}

output "storage_container_name" {
  description = "redwolves-container"
  value       = azurerm_storage_container.sc.name
}

output "storage_blob_name" {
  description = "redwolves-87"
  value       = azurerm_storage_blob.blob-82.name
}
