resource "azurerm_cosmosdb_account" "cosmosdb" {
  name                = "${var.cosmosdb_account_name}"
  location            = "${var.cosmosdb_account_location}"
  resource_group_name = "${var.resource-group_name}"
  offer_type          = "${var.cosmosdb_account_offer}"
  kind                = "${var.cosmosdb_account_kind}"

  enable_automatic_failover = "${var.cosmosdb_account_failover}"

  consistency_policy {
    consistency_level       = "${var.cosmosdb_account_consistency}"
    max_interval_in_seconds = "${var.cosmosdb_account_maxinterval}"
    max_staleness_prefix    = "${var.cosmosdb_account_maxstaleness}"
  }

  geo_location {
    prefix            = "${var.cosmosdb_account_name}-primary"
    location          = "${var.cosmosdb_account_location}"
    failover_priority = 0
  }

  geo_location {
    location          = "${var.cosmosdb_account_failover_location}"
    failover_priority = 1
  }
}