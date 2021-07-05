output "eventhub_connection_string" {
  value = azurerm_eventhub_namespace.example.default_primary_connection_string
  sensitive = true
}


