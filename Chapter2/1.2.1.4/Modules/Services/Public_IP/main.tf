resource "azurerm_public_ip" "generic-ip" {
  name                = "PublicIPForLB"
  location            = "${var.azure-dc}"
  resource_group_name = "${var.resource-grp-name}"
  allocation_method   = "Static"
}