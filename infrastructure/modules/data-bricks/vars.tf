variable "resource-group_name" {
    description = "(Required) The name of the Resource Group."
    default     = ""
}
variable "databricks_workspace_name" {
    description = "(Required) The name of the Storage Account."
    default     = ""
}
variable "databricks_workspace_location" {
    description = "(Required) The name of the Storage Account."
    default     = ""
}
variable "databricks_workspace_sku" {
    description = "(Required) The name of the Storage Account."
    default     = ""
}
variable "resource-tags" {
    type        = "map"
    description = "(Required) The Resource Tags to be applied to the Storage Account."
    default     = {}
}