
variable "resource-grp-name" {
  default = "test"
}

variable "azure-dc" {
  default = "eastus"
}



variable "type-of-cluster" {
  default = "test"
}

variable "vm_prefix" {
  default = "test"
}

variable "private_ip_addresses"{
  type = list
}

variable "lb_backend_pool"{
  default = "test"
}

variable "vm_count"{
  default = "1"
}

variable "ssh_key"{
  default = "xyz"
}