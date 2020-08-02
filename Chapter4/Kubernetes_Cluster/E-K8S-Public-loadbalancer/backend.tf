terraform {
  backend "azurerm" {
    resource_group_name = "K8Scluster"
    storage_account_name = "cnabookprod"
    container_name = "k8s-cluster-dev"
    key = "K8S_Public_Loadbalancer"
  }
}
