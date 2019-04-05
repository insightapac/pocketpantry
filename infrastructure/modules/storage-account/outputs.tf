output "storage-account_name" {
  value = "${azurerm_storage_account.storage-account.name}"
}
output "storage-account_primary-key" {
  value = "${azurerm_storage_account.storage-account.primary_access_key}"
}
output "storage-account_secondary-key" {
  value = "${azurerm_storage_account.storage-account.secondary_access_key}"
}
output "storage-account_primary_connection_string" {
  value = "${azurerm_storage_account.storage-account.primary_connection_string}"
}