resource "azurerm_cosmosdb_account" "cosmos_mongodb_account" {
  name                             = var.account_name
  location                         = var.location
  resource_group_name              = var.resource_group
  offer_type                       = "Standard"
  kind                             = "MongoDB"
  free_tier_enabled                = var.enable_free_tier
  multiple_write_locations_enabled = false
  tags                             = { "CreatedBy" = "terraform" }
  capabilities {
    name = "EnableMongo"
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }
}