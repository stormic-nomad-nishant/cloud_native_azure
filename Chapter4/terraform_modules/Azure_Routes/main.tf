provider "azurerm" {
    features {}
}
resource "azurerm_route" "generic-routes" {
  name                = var.route_name
  resource_group_name = var.resource-grp-name
  route_table_name    = var.route_table_name
  address_prefix      = var.address_prefix
  next_hop_type       = "VirtualAppliance"
  next_hop_in_ip_address = var.next_hop_in_ip_address
}