module "route0" {
  source = "../../terraform_modules/Azure_Routes"
  route_name = "k8s-pod-router0"
  resource-grp-name = "K8Scluster"
  route_table_name = "k8s-pod-router"
  address_prefix = "10.200.0.0/24"
  next_hop_in_ip_address = "10.240.0.20" 
}

module "route1" {
  source = "../../terraform_modules/Azure_Routes"
  route_name = "k8s-pod-router1"
  resource-grp-name = "K8Scluster"
  route_table_name = "k8s-pod-router"
  address_prefix = "10.200.1.0/24"
  next_hop_in_ip_address = "10.240.0.21"
  
}

module "route2" {
  source = "../../terraform_modules/Azure_Routes"
  route_name = "k8s-pod-router2"
  resource-grp-name = "K8Scluster"
  route_table_name = "k8s-pod-router"
  address_prefix = "10.200.2.0/24"
  next_hop_in_ip_address = "10.240.0.22"
}