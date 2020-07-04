resource "azurerm_lb" "generic-lb" {
  name                = "${var.loadbalancer-name}"
  location            = "${var.azure-dc}"
  resource_group_name = "${var.resource-grp-name}"

  frontend_ip_configuration {
    name                 = "${var.frontend-ip-conf-name}"
    public_ip_address_id = "${var.public-ip-id}"
  }
}

resource "azurerm_lb_backend_address_pool" "generic-be-pool" {
  resource_group_name = "${var.resource-grp-name}"
  loadbalancer_id     = "${azurerm_lb.generic-lb.id}"
  name                = "BackEndAddressPool"
}


resource "azurerm_lb_probe" "generic-ssh-probe" {
  resource_group_name = "${var.resource-grp-name}"
  loadbalancer_id     = "${azurerm_lb.generic-lb.id}"
  name                = "ssh-running-probe"
  port                = 22
}

resource "azurerm_lb_rule" "generic-ssh-rules" {
  resource_group_name            = "${var.resource-grp-name}"
  loadbalancer_id                = "${azurerm_lb.generic-lb.id}"
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 22
  backend_port                   = 22
  frontend_ip_configuration_name = "${var.frontend-ip-conf-name}"
  backend_address_pool_id        = "${azurerm_lb_backend_address_pool.generic-be-pool.id}"
  probe_id = "${azurerm_lb_probe.generic-ssh-probe.id}"
}

