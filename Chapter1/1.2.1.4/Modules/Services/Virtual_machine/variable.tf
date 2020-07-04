variable "azure-dc" {
  default = "eastus"
}
variable "resource-grp-name" {
  default = "test"
}
variable "machine-name" {
  default = "demo"
}
variable "machine-type" {
  default = "Standard_DS1_v2"
}
##################
variable "sys_hostname" {
  default = "test-dummy"
}
variable "account_name" {
  default = "ubuntu"
}
##################

variable "vir-nic" {
  type = "list"
  default = ["test"]
}
variable "source_key_path" {
  default = "/blah/some/more/blah"
}

variable "instanace-count" {
  default = 0
}