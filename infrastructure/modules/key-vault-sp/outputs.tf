output "key-vault_id" {
  value = "${azurerm_key_vault.key-vault.id}"
}
output "key-vault_uri" {
  value = "${azurerm_key_vault.key-vault.vault_uri}"
}