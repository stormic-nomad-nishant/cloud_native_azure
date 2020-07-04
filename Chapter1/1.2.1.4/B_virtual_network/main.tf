module "CloudNativeAzure-vnet" {
  source = "../Modules/Services/Virtual_network"
  vpc-cidr = ["10.0.0.0/16"]
  vpc-name = "cna-prod"
  subnet1-cidr = "10.0.1.0/24"
  subnet2-cidr = "10.0.2.0/24"
  subnet3-cidr = "10.0.3.0/24"
  network-secgrp-name = "cloudnative-public-firewall"
  resource-grp-name = "CloudNativeAzure-group"
  azure-dc = "westus"
  ddos-proc-name = "cloudnative-stdddos-proc"
  env-type = "Production"
}
