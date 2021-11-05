provider "azurerm" {
    features {}
}

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


resource "azurerm_lb_probe" "probe" {
  resource_group_name = var.resource-grp-name
  loadbalancer_id     = azurerm_lb.generic_lb.id
  name                = var.azurerm_lb_probe_name
  port                = var.backend_port
  protocol            = var.protocol
}


resource "azurerm_lb_rule" "generic_lb_rule" {
  resource_group_name            = var.resource-grp-name
  loadbalancer_id                = azurerm_lb.generic_lb.id
  name                           = var.name_of_lb_rule
  protocol                       = var.protocol
  frontend_port                  = var.frontend_port
  backend_port                   = var.backend_port
  frontend_ip_configuration_name = var.front_end_config_name
  backend_address_pool_id        = azurerm_lb_backend_address_pool.lbpool.id
}