variable "resource-group_name" {
    description = "(Required) The name of the Resource Group."
    default     = ""
}
variable "storage-account_name" {
    description = "(Required) The name of the Storage Account."
    default     = ""
}
variable "storage-account_location" {
    description = "(Required) The Azure region in which the Storage Account will be deployed."
    default     = ""
}
variable "storage-account_kind" {
    description = "(Required) The type of Storage Account which will be deployed."
    default     = "StorageV2"
}
variable "storage-account_tier" {
    description = "(Required) The Storage Account tier."
    default     = "Standard"
}
variable "storage-account_replication_type" {
    description = "(Required) The Storage Account replication type."
    default     = "LRS"
}
variable "resource-tags" {
    type        = "map"
    description = "(Required) The Resource Tags to be applied to the Storage Account."
    default     = {}
}