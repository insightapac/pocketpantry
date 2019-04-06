resource "azurerm_databricks_workspace" "databricks_workspace" {
    name                = "${var.databricks_workspace_name}"
    resource_group_name = "${var.resource-group_name}"
    location            = "${var.databricks_workspace_location}"
    sku                 = "${var.databricks_workspace_sku}"
    tags                = "${var.resource-tags}"  
}