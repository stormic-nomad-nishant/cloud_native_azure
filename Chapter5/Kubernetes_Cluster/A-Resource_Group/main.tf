module "CNA-Terraform-Resource-Grp" {
  source = "../../terraform_modules/Azure_ResourceGroup"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}
