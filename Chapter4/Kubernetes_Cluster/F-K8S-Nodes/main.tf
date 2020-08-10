module "master" {
  source = "../../Azure_VMs"
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
  private_ip_addresses = ["10.240.0.10", "10.240.0.11", "10.240.0.12"]
  vm_prefix = "controller"
  username = "ubuntu"
  vm_count = 3
  image_id = "/subscriptions/b5627140-9087-4305-a94c-3b16afe86791/resourceGroups/K8Scluster/providers/Microsoft.Compute/images/k8s_controller"
  ssh_key = "${file("/Users/nissingh/IdeaProjects/id_rsa.pub")}"

  
}



module "worker" {
  source = "../../Azure_VMs"
  azure-dc = "eastus2"
  resource-grp-name = "K8Scluster"
  private_ip_addresses = ["10.240.0.20", "10.240.0.21", "10.240.0.22"]
  vm_prefix = "worker"
  username = "ubuntu"
  image_id = "/subscriptions/b5627140-9087-4305-a94c-3b16afe86791/resourceGroups/K8Scluster/providers/Microsoft.Compute/images/k8s_worker"
  vm_count = 3
  ssh_key = "${file("/Users/nissingh/IdeaProjects/id_rsa.pub")}"
}