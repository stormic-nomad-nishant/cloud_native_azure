module "K8S-API-Server-Public-IP" {
  source = "../../terraform_modules/Azure_PublicIP"
  name_of_ip = "k8s_master_lb"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}

module "Worker0" {
  source = "../../terraform_modules/Azure_PublicIP"
  name_of_ip = "Worker0"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}
module "Worker1" {
  source = "../../terraform_modules/Azure_PublicIP"
  name_of_ip = "Worker1"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}
module "Worker2" {
  source = "../../terraform_modules/Azure_PublicIP"
  name_of_ip = "Worker2"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}


module "Controller0" {
  source = "../../terraform_modules/Azure_PublicIP"
  name_of_ip = "Controller0"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}
module "Controller1" {
  source = "../../terraform_modules/Azure_PublicIP"
  name_of_ip = "Controller1"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}
module "Controller2" {
  source = "../../terraform_modules/Azure_PublicIP"
  name_of_ip = "Controller2"
  resource-grp-name = "K8Scluster"
  azure-dc = "eastus2"
  env = "dev"
  type-of-cluster = "k8s-experments"
}








