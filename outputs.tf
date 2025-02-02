output "id" {
  description = "id of azure cosmos db account created"
  value       = azurerm_cosmosdb_account.cosmos_mongodb_account.id
}