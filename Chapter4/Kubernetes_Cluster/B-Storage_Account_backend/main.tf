module "CNA-Terraform-storage-backend" {
  source = "../../terraform_modules/Azure_StorageAccount"
  resource-grp-name = "K8Scluster"
  storage-account-name = "cnabookprod"
  azure-dc = "eastus2"
  storage-account-tier = "Standard"
  storage-replication-type = "LRS"
  storage-container-name = "k8s-cluster-dev"
  storage-container-access = "private"
  env = "dev"
  type-of-cluster = "k8s-experments"
}
