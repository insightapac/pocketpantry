output "cosmosdb_database_name" {
  value = "${null_resource.cosmosdb-collection.environment.cosmosdb_database_name}"
}