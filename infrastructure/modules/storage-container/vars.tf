variable "storage-container_name" {
  description   = "(Required) The name of the storage container."
  default       = ""
}
variable "storage-container_access" {
  description   = "(Required) The access type of the storage container."
  default       = "private"
}
variable "resource-group_name" {
    description = "(Required) The name of the Resource Group."
    default     = ""
}
variable "storage-account_name" {
    description = "(Required) The name of the Storage Account."
    default     = ""
}