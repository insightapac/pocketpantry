resource "azurerm_key_vault" "key-vault" {
    name                  = "${var.key-vault_name}"
    location              = "${var.key-vault_location}"
    resource_group_name   = "${var.resource-group_name}"
    tags                  = "${var.resource-tags}"
    tenant_id             = "${var.azure-tenant_id}"
    
    enabled_for_template_deployment = true

    sku {
        name = "${var.key-vault_sku}"
    }
    
    access_policy {
        tenant_id = "${var.azure-tenant_id}"
        object_id = "${var.service-principal_id}"
        certificate_permissions = "${var.certificate_permissions_all}"
        key_permissions = "${var.key_permissions_all}"
        secret_permissions = "${var.secret_permissions_all}"
    }

    access_policy {
        tenant_id = "${var.azure-tenant_id}"
        object_id = "${var.admin-group_id}"
        certificate_permissions = "${var.certificate_permissions_all}"
        key_permissions = "${var.key_permissions_all}"
        secret_permissions = "${var.secret_permissions_all}"
    }
}