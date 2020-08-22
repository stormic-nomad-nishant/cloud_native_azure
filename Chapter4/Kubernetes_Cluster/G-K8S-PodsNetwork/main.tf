module "k8s-route-table" {
  source = "../../terraform_modules/Azure_Route-Table"
  route_table_name = "k8s-pod-router"
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
}



module "k8s-route-associate" {
  source = "../../terraform_modules/Azure-Subnet-RouteTable-Association"
  subnet_id = data.terraform_remote_state.k8s_vnet.outputs.subnet_id
  route_table_id = module.k8s-route-table.Route-table-id
}
