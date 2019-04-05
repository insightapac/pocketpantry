# Create an Azure Resource Group
resource "azurerm_resource_group" "azure-rg" {
  name     = "${var.resource-group_name}"
  location = "${var.resource-group_location}"
  tags     = "${var.resource-group_tags}"
}