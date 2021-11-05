data "terraform_remote_state" "virtual-network" {
  backend = "azurerm"
  config = {
    storage_account_name = "cnabookprod"
    container_name = "cloud-native-devs"
    key = "Virtual_network"

  }
}
