resource "azurerm_lb" "generic_lb" {
  name                = var.name_of_lb
  location            = var.azure-dc
  resource_group_name = var.resource-grp-name

  frontend_ip_configuration {
    name                 = var.front_end_config_name
    public_ip_address_id = var.public_ip_id
  }
}

resource "azurerm_lb_backend_address_pool" "lbpool" {
  resource_group_name = var.resource-grp-name
  loadbalancer_id     = azurerm_lb.generic_lb.id
  name                = var.backend_pool_name
}
