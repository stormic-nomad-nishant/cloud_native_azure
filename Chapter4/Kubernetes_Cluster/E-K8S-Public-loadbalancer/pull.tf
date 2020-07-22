data "terraform_remote_state" "k8s_publicIP"{
  backend = "azurerm"
  config  = {
    storage_account_name = "cnabookprod"
    container_name = "K8S-Cluster-dev"
    key = "K8S_Public_IP"
  }
}
