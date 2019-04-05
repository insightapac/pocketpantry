provider "azurerm" {
  version = "=1.24.0"
}
provider "azuread" {
  version = "=0.2.0"
}
data "azurerm_client_config" "current" {}
module "resource-group" {
  source                  = "../modules/resource-group"
  resource-group_name     = "${local.solution-name-lower}"
  resource-group_location = "${var.primary_region}"
  resource-group_tags = {
    solution    = "${local.solution-name}"
  }
}