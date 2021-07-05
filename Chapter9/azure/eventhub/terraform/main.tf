provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "oracnia-eventhub-group"
  location = "East US"
}

resource "azurerm_eventhub_namespace" "example" {
  name                = "oracnia-eventhub-namespace"
  location            = "East US"
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
  capacity            = 1 
}

resource "azurerm_eventhub" "example" {
  name                = "oracnia-eventhub"
  namespace_name      = azurerm_eventhub_namespace.example.name
  resource_group_name = azurerm_resource_group.example.name
  partition_count     = 1 
  message_retention   = 1 
}

resource "azurerm_eventhub_consumer_group" "example" {
  name                = "oracnia-consumergroup"
  resource_group_name = azurerm_resource_group.example.name
  namespace_name      = azurerm_eventhub_namespace.example.name
  eventhub_name       = azurerm_eventhub.example.name
}
