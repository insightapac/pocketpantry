variable "cosmosdb_database_name" {
  description = "(Required) The name of the CosmosDB database."
  default     = ""
}
variable "cosmosdb_collection_name" {
  description = "(Required) The name of the CosmosDB collection."
  default     = ""
}
variable "resource_group_name" {
    description = "(Required) The name of the Resource Group."
    default     = ""
}