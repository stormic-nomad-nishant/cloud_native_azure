provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "oracnia-servicebus-group"
  location = "East US"
}

resource "azurerm_servicebus_namespace" "example" {
  name                = "oracnia-servicebus-namespace"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"

  tags = {
    source = "terraform"
  }
}

resource "azurerm_servicebus_queue" "example" {
  name                = "oracnia-servicebus-queue"
  resource_group_name = azurerm_resource_group.example.name
  namespace_name      = azurerm_servicebus_namespace.example.name
  enable_partitioning = true
}

resource "azurerm_servicebus_topic" "example" {
  name                = "oracnia-servicebus-topic"
  resource_group_name = azurerm_resource_group.example.name
  namespace_name      = azurerm_servicebus_namespace.example.name
  enable_partitioning = true
}

resource "azurerm_servicebus_subscription" "example" {
  name                = "oracnia-servicebus-subscription"
  resource_group_name = azurerm_resource_group.example.name
  namespace_name      = azurerm_servicebus_namespace.example.name
  topic_name          = azurerm_servicebus_topic.example.name
  max_delivery_count  = 1
}
