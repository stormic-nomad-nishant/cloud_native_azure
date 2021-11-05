provider "azurerm" {
    features {}
}
resource "azurerm_route_table" "generic-routetable" {
  name                = var.route_table_name
  location            = var.azure-dc
  resource_group_name = var.resource-grp-name
}
