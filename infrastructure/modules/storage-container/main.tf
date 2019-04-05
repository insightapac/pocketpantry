resource "azurerm_storage_container" "storage-container" {
  name                  = "${var.storage-container_name}"
  resource_group_name   = "${var.resource-group_name}"
  storage_account_name  = "${var.storage-account_name}"
  container_access_type = "${var.storage-container_access}"
}