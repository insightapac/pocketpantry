variable "resource-group_name" {
    description = "(Required) The name of the Resource Group."
    default     = ""
}
variable "resource-group_location" {
    description = "(Required) The Azure region in which the Resource Group will be deployed."
    default     = ""
}
variable "resource-group_tags" {
    type        = "map"
    description = "(Required) The Resource Tags to be applied to the Resource Group."
    default     = {}
}