provider "azurerm" {
    features {}
}
resource "azurerm_network_security_group" "generic-public-sec-grp" {
  location = var.azure-dc
  name = var.network-secgrp-name
  resource_group_name = var.resource-grp-name
}
resource "azurerm_network_security_rule" "generic-public-rules" {
  name                        = "test123"
  priority                    = 100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "22"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource-grp-name
  network_security_group_name = azurerm_network_security_group.generic-public-sec-grp.name
}

resource "azurerm_network_ddos_protection_plan" "generic-ddos-prc" {
  location = var.azure-dc
  name = var.ddos-proc-name
  resource_group_name = var.resource-grp-name
}

resource "azurerm_virtual_network" "generic-virtual-cloud" {
  address_space = var.vpc-cidr
  location = var.azure-dc
  name = var.vpc-name
  resource_group_name = var.resource-grp-name
  ddos_protection_plan {
    enable = true
    id = azurerm_network_ddos_protection_plan.generic-ddos-prc.id
  }
  tags = {
    environment = var.env-type
  }
}

resource "azurerm_subnet" "private-subnet-a" {
  name                 = var.subnet1-name
  resource_group_name  = var.resource-grp-name
  virtual_network_name = azurerm_virtual_network.generic-virtual-cloud.name
  address_prefixes       = [var.subnet1-cidr]
}

resource "azurerm_subnet" "private-subnet-b" {
  name                 = var.subnet2-name
  resource_group_name  = var.resource-grp-name
  virtual_network_name = azurerm_virtual_network.generic-virtual-cloud.name
  address_prefixes       = [var.subnet2-cidr]
}

resource "azurerm_subnet" "public-subnet-a" {
  name                 = var.subnet3-name
  resource_group_name  = var.resource-grp-name
  virtual_network_name = azurerm_virtual_network.generic-virtual-cloud.name
  address_prefixes       = [var.subnet3-cidr]
}
resource "azurerm_subnet" "public-subnet-b" {
  name                 = var.subnet4-name
  resource_group_name  = var.resource-grp-name
  virtual_network_name = azurerm_virtual_network.generic-virtual-cloud.name
  address_prefixes       = [var.subnet4-cidr]
}

resource "azurerm_network_interface" "private-nic" {
  name                = "private-nic"
  location            = var.azure-dc
  resource_group_name = var.resource-grp-name

  ip_configuration {
    name                          = "private-sub-a"
    subnet_id                     = azurerm_subnet.private-subnet-a.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_public_ip" "public-a-ips" {
  name                = "public-ips-a"
  location            = var.azure-dc
  resource_group_name = var.resource-grp-name
  allocation_method   = "Static"

  tags = {
    environment = var.env-type
  }
}
resource "azurerm_public_ip" "public-b-ips" {
  name                = "public-ips-b"
  location            = var.azure-dc
  resource_group_name = var.resource-grp-name
  allocation_method   = "Static"

  tags = {
    environment = var.env-type
  }
}


resource "azurerm_network_interface" "public-nic" {
  name                = "public-nic"
  location            = var.azure-dc
  resource_group_name = var.resource-grp-name

  ip_configuration {
    name                          = "public-sub-a"
    subnet_id                     = azurerm_subnet.public-subnet-a.id
    public_ip_address_id = azurerm_public_ip.public-a-ips.id
    private_ip_address_allocation = "Dynamic"
  }
}
