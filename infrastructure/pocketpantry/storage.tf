module "storage-account" {
  source                            = "../modules/storage-account"
  resource-group_name               = "${module.resource-group.resource-group_name}"
  storage-account_name              = "${local.solution-name-lower}staraw"
  storage-account_location          = "${module.resource-group.resource-group_location}"
  storage-account_replication_type  = "LRS"
  resource-tags                     = "${module.resource-group.resource-group_tags}"
}
module "storage-container-images" {
  source = "../modules/storage-container"
  resource-group_name   = "${module.resource-group.resource-group_name}"
  storage-account_name  = "${module.storage-account.storage-account_name}"
  storage-container_name  = "images"
}
module "storage-container-audio" {
  source = "../modules/storage-container"
  resource-group_name   = "${module.resource-group.resource-group_name}"
  storage-account_name  = "${module.storage-account.storage-account_name}"
  storage-container_name  = "audio"
}