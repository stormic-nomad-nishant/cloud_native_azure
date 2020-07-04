terraform {
  backend "azurerm" {
    resource_group_name  = "linkedin-group"
    storage_account_name = "linkedinstg"
    container_name       = "linkedin-devs"
    key                  = "Instance_Network"
  }
}