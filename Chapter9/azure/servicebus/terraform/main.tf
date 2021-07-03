provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "mdfranz-servicebus-group"
  location = "Central US"
}

resource "azurerm_servicebus_namespace" "example" {
  name                = "mdfranz-servicebus-namespace"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"

  tags = {
    source = "terraform"
  }
}

resource "azurerm_servicebus_queue" "example" {
  name                = "mdfranz-servicebus-queue"
  resource_group_name = azurerm_resource_group.example.name
  namespace_name      = azurerm_servicebus_namespace.example.name
  enable_partitioning = true
}

resource "azurerm_servicebus_topic" "example" {
  name                = "mdfranz-servicebus-topic"
  resource_group_name = azurerm_resource_group.example.name
  namespace_name      = azurerm_servicebus_namespace.example.name
  enable_partitioning = true
}

resource "azurerm_servicebus_subscription" "example" {
  name                = "mdfranz-servicebus-subscription"
  resource_group_name = azurerm_resource_group.example.name
  namespace_name      = azurerm_servicebus_namespace.example.name
  topic_name          = azurerm_servicebus_topic.example.name
  max_delivery_count  = 1
}

/* output "connstr" {
  value = mdfranz-servicebus-namespace.default_primary_connection_string
}
*/
