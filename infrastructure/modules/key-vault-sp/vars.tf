variable "resource-group_name" {
    description = "(Required) The name of the Resource Group."
    default = ""
}
variable "key-vault_name" {
  description = "(Required) The name of the Azure Key Vault which will be created."
  default = ""
}
variable "key-vault_location" {
  description = "(Required) The location where the Azure Key Vault will be created."
  default = ""
}
variable "key-vault_sku" {
  description = "(Required) The SKU of the Azure Key Vault which will be created."
  default = "standard"  
}
variable "azure-tenant_id" {
  description   = "(Required) The ID of the Azure AD tenant."
  default       = ""
}
variable "service-principal_id" {
  description   = "(Required) The object ID of the Azure AD service principal to be Key Vault admin."
  default       = ""
}
variable "admin-group_id" {
  description   = "(Required) The object ID of the Azure AD security group to be Key Vault admins."
  default       = ""
}
variable "resource-tags" {
    type        = "map"
    description = "(Required) The Resource Tags to be applied to the Storage Account."
    default     = {}
}
variable "certificate_permissions_all" {
  type          = "list"
  description   = "Certificate action permissions in the Key Vault."
  default       = [
      "create",
      "delete",
      "deleteissuers",
      "get",
      "getissuers",
      "import",
      "list",
      "listissuers",
      "managecontacts",
      "manageissuers",
      "purge",
      "recover",
      "setissuers",
      "update"
  ]
}
variable "key_permissions_all" {
  type          = "list"
  description   = "Key action permissions in the Key Vault."
  default       = [
      "backup",
      "create",
      "decrypt",
      "delete",
      "encrypt",
      "get",
      "import",
      "list",
      "purge",
      "recover",
      "restore",
      "sign",
      "unwrapKey",
      "update",
      "verify",
      "wrapKey"
  ]
}
variable "secret_permissions_all" {
  type          = "list"
  description   = "Secret action permissions in the Key Vault."
  default       = [
      "backup",
      "delete",
      "get",
      "list",
      "purge",
      "recover",
      "restore",
      "set"
  ]
}