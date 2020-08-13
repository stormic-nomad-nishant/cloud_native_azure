
variable "resource-grp-name" {
  default = "test"
}

variable "azure-dc" {
  default = "eastus"
}

variable "username" {
  default = "test"
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

variable "vm_count"{
  default = "1"
}

variable "ssh_key"{
  default = "xyz"
}

variable "image_id"{
  default = "test"
}

variable "subnet_id"{
  default = "test"
}

variable "env" {
  default = "stg"
}

variable "vm_size"{
  default = "Standard_D1_v2"
}


variable "public_ip_address_id"{
  type = list
}