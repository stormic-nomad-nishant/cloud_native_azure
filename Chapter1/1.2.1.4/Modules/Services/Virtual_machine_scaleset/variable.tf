# azure resource group
variable "resource-grp-name" {
  default = "test"
}

variable "azure-dc" {
  default = "eastus"
}
#*********************************
variable "scale-set-name" {
  default = "linkedin-scaler"
}

variable "admin_user" {
  default = "ubuntu"
}

variable "account_name" {
  default = "ubuntu"
}
##################################

variable "tags" {
  default = "terraform-scaleset"
}

variable "subnet_id" {
  default = "test"
}

variable "backend-address-pool-id" {
  default = "test"
}