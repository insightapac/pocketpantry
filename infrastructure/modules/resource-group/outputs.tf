output "resource-group_name" {
  value = "${azurerm_resource_group.azure-rg.name}"
}
output "resource-group_location" {
  value = "${azurerm_resource_group.azure-rg.location}"
}
output "resource-group_id" {
  value = "${azurerm_resource_group.azure-rg.id}"
}
output "resource-group_tags" {
  value = "${azurerm_resource_group.azure-rg.tags}"
}