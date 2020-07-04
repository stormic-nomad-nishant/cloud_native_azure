terraform {
  backend "azurerm" {
    resource_group_name  = "CloudNativeAzure-group"
    storage_account_name = "cnabookprod"
    container_name       = "cloud-native-devs"
    key                  = "Instance_Network"
  }
}
