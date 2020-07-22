module "K8S-API-Server-Public-IP" {
  source = "../../terraform_modules/Azure_PublicIP"
  name_of_lb = "k8s_master_lb"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}
