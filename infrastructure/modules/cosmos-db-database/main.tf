resource "null_resource" "cosmosdb-database" {
  provisioner "local-exec" {
    command = "az cosmosdb database create --db-name $(echo $cosmosdb_database_name) --name $(echo $cosmosdb_account_name) --resource-group-name $(echo $resource_group_name) --verbose"
    interpreter = ["/bin/bash", "-c"]
    environment {
      cosmosdb_database_name    = "${var.cosmosdb_database_name}"
      cosmosdb_account_name     = "${var.cosmosdb_account_name}"
      resource_group_name       = "${var.resource_group_name}"
    }
  }
}