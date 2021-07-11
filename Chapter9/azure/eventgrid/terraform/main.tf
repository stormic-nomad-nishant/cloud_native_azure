provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "oracnia-eventgrid-group"
  location = "East US"
}

resource "azurerm_eventgrid_domain" "example" {
  name                = "oracnia-eventgrid-domain"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_eventgrid_domain_topic" "example" {
  name                = "oracnia-eventgrid-domain-topic"
  domain_name         = azurerm_eventgrid_domain.example.name
  resource_group_name = azurerm_resource_group.example.name
}
