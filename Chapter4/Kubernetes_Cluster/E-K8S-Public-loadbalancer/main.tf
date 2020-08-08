module "K8S-API-Public-loadbalancer" {
  source = "../../Azure_Loadbalancer"
  name_of_lb = "k8s_master_lb"
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
  front_end_config_name = "K8S-frontend-config"
  public_ip_id = data.terraform_remote_state.k8s_publicIP.output.PublicIP_ID
  backend_pool_name = "k8s-control-plane" 
}
