module "api-management" {
    source                  = "../modules/api-management"
    apim_name               = "${local.solution-name-lower}-apim"
    apim_location           = "${module.resource-group.resource-group_location}"
    resource-group_name     = "${local.solution-name-lower}"
    apim_publisher_name     = "${var.apim_publisher_name}"
    apim_publisher_email    = "${var.apim_publisher_email}"
}