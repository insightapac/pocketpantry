resource "null_resource" "cosmosdb-collection" {
  provisioner "local-exec" {
    command = "az cosmosdb collection create --db-name $(echo $cosmosdb_account_name) --collection-name $(echo $cosmosdb_collection_name) --verbose"
    interpreter = ["/bin/bash", "-c"]
    environment {
        cosmosdb_account_name    = "${var.cosmosdb_account_name}"
        cosmosdb_collection_name = "${var.cosmosdb_collection_name}"
    }
  }
}