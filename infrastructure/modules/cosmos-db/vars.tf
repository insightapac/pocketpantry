variable "resource-group_name" {
    description = "(Required) The name of the Resource Group."
    default     = ""
}
variable "cosmosdb_account_name" {
    description = "(Required) The name of the CosmosDB account."
    default     = ""
}
variable "cosmosdb_account_location" {
    description = "(Required) The Azure region of the CosmosDB account."
    default     = ""
}
variable "cosmosdb_account_offer" {
    description = "(Required) The offer type of the CosmosDB account."
    default     = "Standard"
}
variable "cosmosdb_account_kind" {
    description = "(Required) The offer type of the CosmosDB account."
    default     = ""
}
variable "cosmosdb_account_failover" {
    description = "(Required) Whether to enable automatic failover."
    default     = true
}
variable "cosmosdb_account_consistency" {
    description = "(Required) The required consistency level of the CosmosDB account."
    default     = ""
}
variable "cosmosdb_account_maxinterval" {
    description = "(Required) The required max interval in seconds."
    default     = ""
}
variable "cosmosdb_account_maxstaleness" {
    description = "(Required) The required max staleness prefix."
    default     = ""
}
variable "cosmosdb_account_failover_location" {
    description = "(Required) The failover Azure region of the CosmosDB accountf."
    default     = ""
}