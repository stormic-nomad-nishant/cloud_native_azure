module "master" {
  source = "../../terraform_modules/Azure_VMs-Master"
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
  private_ip_addresses = ["10.240.0.10", "10.240.0.11", "10.240.0.12"]
  vm_prefix = "controller"
  username = "ubuntu"
  vm_size = "Standard_D1_v2"
  env = "dev"
  type-of-cluster = "k8s-experments"
  vm_count = 3
  subnet_id = data.terraform_remote_state.k8s_vnet.outputs.subnet_id
  image_id = "/subscriptions/b5627140-9087-4305-a94c-3b16afe86791/resourceGroups/K8Scluster/providers/Microsoft.Compute/images/k8s_controller"
  ssh_key = "${file("/Users/nissingh/TESTING/SSH_KEYS/id_rsa.pub")}"
  lb_backend_pool = data.terraform_remote_state.k8s_loadbalancer.outputs.lb_backend_pool
}



module "worker" {
  source = "../../terraform_modules/Azure_VMs-Worker"
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
  env = "dev"
  vm_size = "Standard_D1_v2"
  type-of-cluster = "k8s-experments"
  subnet_id = data.terraform_remote_state.k8s_vnet.outputs.subnet_id
  private_ip_addresses = ["10.240.0.20", "10.240.0.21", "10.240.0.22"]
  vm_prefix = "worker"
  username = "ubuntu"
  image_id = "/subscriptions/b5627140-9087-4305-a94c-3b16afe86791/resourceGroups/K8Scluster/providers/Microsoft.Compute/images/k8s_worker"
  vm_count = 3
  ssh_key = "${file("/Users/nissingh/TESTING/SSH_KEYS/id_rsa.pub")}"
}