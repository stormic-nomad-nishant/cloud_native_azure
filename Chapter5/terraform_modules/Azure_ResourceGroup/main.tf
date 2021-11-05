provider "azurerm" {
    features {}
}

##################################################################

resource "azurerm_resource_group" "generic-resource-gp" {
  name     = var.resource-grp-name
  location = var.azure-dc

  tags = {
  environment = var.env
  cluster = var.type-of-cluster
  }
}
