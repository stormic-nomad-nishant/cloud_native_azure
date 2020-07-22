module "CNA-Virtual-Network" {
  source = "../../terraform_modules/Azure_Vnet"
  vnet-cidr = ["10.240.0.0/24"]
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
}
