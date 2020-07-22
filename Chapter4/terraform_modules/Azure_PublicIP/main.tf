resource "azurerm_public_ip" "generic-public-ip" {
  name                = var.name_of_lb
  location            = var.azure-dc
  resource_group_name = var.resource-grp-name
  allocation_method   = "Static"
  tags = {
  environment = var.env
  cluster = var.type-of-cluster
  }
}
