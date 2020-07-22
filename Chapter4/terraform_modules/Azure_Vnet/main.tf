provider "azurerm" {
    features {}
}

##################################################################

resource "azurerm_virtual_network" "generic-vnet" {
  address_space = var.vnet-cidr
  location = var.azure-dc
  name = (var.vnet-name)-vnet
  resource_group_name = var.resource-grp-name

  tags = {
  environment = var.env
  cluster = var.type-of-cluster
  }
}

##################################################################

resource "azurerm_subnet" "generic-subnet" {
  name                 = (var.vnet_name)-subnet
  resource_group_name  = var.resource-grp-name
  virtual_network_name = azurerm_virtual_network.generic-vnet.name
  address_prefixes     = var.vnet_cidr[0]
}


##################################################################

resource "azurerm_network_security_group" "generic-sec-group" {
  name                = (var.vnet_name)-sec-group
  location            = var.azure-dc
  resource_group_name = var.resource-grp-name
  tags = {
  environment = var.env
  cluster = var.type-of-cluster
  }
}

##################################################################

resource "azurerm_network_security_rule" "ssh-ingress" {
  name                        = "ssh-ingress"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource-grp-name
  network_security_group_name = azurerm_network_security_group.generic-sec-group.name
}

resource "azurerm_network_security_rule" "https-ingress" {
  name                        = "https-ingress"
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "6443"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource-grp-name
  network_security_group_name = azurerm_network_security_group.generic-sec-group.name
}
