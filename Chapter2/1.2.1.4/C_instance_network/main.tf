module "CloudNativeAzure-testmachine" {
  source = "../Modules/Services/Virtual_machine"
  azure-dc = "westus"
  instanace-count = 1
  machine-name = "myfirst-machine"
  vir-nic = ["${data.terraform_remote_state.virtual-network.outputs.pub-nic-id}"]
  resource-grp-name = "CloudNativeAzure-group"
  machine-type = "Standard_DS1_v2"
  sys_hostname = "cloudnative-jumpbox"
  account_name = "ubuntu"
}
