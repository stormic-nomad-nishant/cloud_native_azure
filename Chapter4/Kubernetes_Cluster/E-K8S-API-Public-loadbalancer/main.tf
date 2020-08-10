module "K8S-API-Public-loadbalancer-master" {
  source = "../../terraform_modules/Azure_Loadbalancer"
  name_of_lb = "k8s_master_lb"
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
  front_end_config_name = "K8S-frontend-config"
  public_ip_id = data.terraform_remote_state.k8s_publicIP.outputs.PublicIP_ID
  backend_pool_name = "k8s-control-plane"
  frontend_port = "6443" 
  backend_port =  "6443"
  protocol = "Tcp"
  name_of_lb_rule = "controller-lb-rule"
  azurerm_lb_probe_name = "k8s_master_probe"
}
