provider "azurerm" {
    features {}
}

resource "azurerm_storage_account" "generic-storage-ac" {
  name                     = var.storage-account-name
  resource_group_name      = var.resource-grp-name
  location                 = var.azure-dc
  account_tier             = var.storage-account-tier
  account_replication_type = var.storage-replication-type
  tags = {
  environment = var.env
  cluster = var.type-of-cluster
  }
}

##################################################################

resource "azurerm_storage_container" "generic-container" {
  name                  = var.storage-container-name
  storage_account_name  = azurerm_storage_account.generic-storage-ac.name
  container_access_type = var.storage-container-access
}
##################################################################

resource "azurerm_storage_blob" "generic-blob" {
  name = var.blob-name
  storage_account_name   = azurerm_storage_account.generic-storage-ac.name
  storage_container_name = azurerm_storage_container.generic-container.name

  type = "Page"
  size = 5120
}
