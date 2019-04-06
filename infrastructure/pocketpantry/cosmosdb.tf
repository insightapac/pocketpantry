module "cosmosdb" {
  source                                = "../modules/cosmos-db"
  cosmosdb_account_name                 = "${local.solution-name-lower}cosmosdb"
  cosmosdb_account_location             = "${module.resource-group.resource-group_location}"
  resource-group_name                   = "${module.resource-group.resource-group_name}"
  cosmosdb_account_kind                 = "MongoDB"
  cosmosdb_account_consistency          = "Session"
  cosmosdb_account_maxinterval          = 5
  cosmosdb_account_maxstaleness         = 100
  cosmosdb_account_failover_location    = "Australia Southeast"
}
module "cosmosdb-database-pocketpantrydb" {
  source = "../modules/cosmos-db-database"
  cosmosdb_database_name  = "pocketpantrydb"
  cosmosdb_account_name   = "${module.cosmosdb.cosmosdb_account_name}"
  resource_group_name     = "${module.resource-group.resource-group_name}"
}
module "cosmosdb-collection-allcollections" {
  source = "../modules/cosmos-db-collection"
  cosmosdb_collection_name   = "allcollections"
  cosmosdb_database_name     = "${module.cosmosdb-database-pocketpantrydb.cosmosdb_database_name}"
}