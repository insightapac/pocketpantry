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