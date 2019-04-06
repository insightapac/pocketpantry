data "azuread_service_principal" "Azure-DevOps" {
  display_name = "Azure-DevOps-${data.azurerm_client_config.current.subscription_id}"
}
module "key-vault" {
  source                = "../modules/key-vault-sp"
  resource-group_name   = "${module.resource-group.resource-group_name}"
  key-vault_name        = "${local.solution-name-lower}-vault"
  key-vault_location    = "${module.resource-group.resource-group_location}"
  resource-tags         = "${module.resource-group.resource-group_tags}"
  azure-tenant_id       = "${data.azurerm_client_config.current.tenant_id}"
  service-principal_id  = "${data.azurerm_client_config.current.service_principal_object_id}"
  admin-group_id        = "161cfa2f-54a2-4f7b-a4f4-14584eb13470"
}