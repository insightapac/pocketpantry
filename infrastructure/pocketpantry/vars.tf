variable "solution-name" {
    description = "(Required) The solution name."
    default = "Pocket Pantry"
}
variable "primary_region" {
    description = "(Required) The primary Azure region for the solution silo."
    default = "Australia East"
}
variable "secondary_region" {
    description = "(Required) The secondary Azure region for the solution silo."
    default = ""
}
variable "apim_publisher_name" {
    description = "(Required) The publisher name for the API Management resource."
    default = "Insight APAC"
}
variable "apim_publisher_email" {
    description = "(Required) The publisher email for the API Management resource."
    default = "rene.brauwers@insight.com"
}