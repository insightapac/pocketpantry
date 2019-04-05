resource "azurerm_api_management" "apim" {
  name                = "${var.apim_name}"
  location            = "${var.apim_location}"
  resource_group_name = "${var.resource-group_name}"
  publisher_name      = "${var.apim_publisher_name}"
  publisher_email     = "${var.apim_publisher_email}"

  sku {
    name     = "${var.apim_sku_name}"
    capacity = "${var.apim_sku_capacity}"
  }
}