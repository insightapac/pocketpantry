resource "azurerm_storage_account" "storage-account" {
  name                      = "${var.storage-account_name}"
  resource_group_name       = "${var.resource-group_name}"
  location                  = "${var.storage-account_location}"
  account_kind              = "${var.storage-account_kind}"
  account_tier              = "${var.storage-account_tier}"
  account_replication_type  = "${var.storage-account_replication_type}"
  tags                      = "${var.resource-tags}"
}