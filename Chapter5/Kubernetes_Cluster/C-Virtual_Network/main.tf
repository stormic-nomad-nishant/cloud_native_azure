module "CNA-Virtual-Network" {
  source = "../../terraform_modules/Azure_Vnet"
  vnet-cidr = ["10.240.0.0/24"]
  vnet-name = "cna-k8s-vnet"
  vnet-subnet-name = "cna-k8s-subnet"
  vnet-sec-group-name = "cna-k8s-secgroup"
  env = "dev"
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
  type-of-cluster = "k8s-experments"
}
