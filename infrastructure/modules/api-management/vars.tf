variable "resource-group_name" {
    description = "(Required) The name of the Resource Group."
    default     = ""
}
variable "apim_name" {
    description = "(Required) The name of the API Management resource."
    default     = ""
}
variable "apim_location" {
    description = "(Required) The Azure region where the API Management resource will be deployed."
    default     = ""
}
variable "apim_publisher_name" {
    description = "(Required) The publisher name of the API Management resource."
    default     = ""
}
variable "apim_publisher_email" {
    description = "(Required) The publisher email of the API Management resource."
    default     = ""
}
variable "apim_sku_name" {
    description = "(Required) The SKU of the API Management resource."
    default     = "Developer"
}
variable "apim_sku_capacity" {
    description = "(Required) The instance count of the API Management resource."
    default     = 1
}