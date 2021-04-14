provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "terraform-servicebus"
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
