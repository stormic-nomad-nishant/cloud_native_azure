data "terraform_remote_state" "k8s_vnet"{
  backend = "azurerm"
  config  = {
    storage_account_name = "cnabookprod"
    resource_group_name = "K8Scluster"
    container_name = "k8s-cluster-dev"
    key = "Virtual_Network"
  }
}