# azure resource group
variable "resource-grp-name" {
  default = "test"
}

variable "azure-dc" {
  default = "eastus"
}
#*********************************

variable "loadbalancer-name" {
  default = "test"
}

variable "public-ip-id" {
  default = "test"
}

variable "frontend-ip-conf-name" {
  default = "PublicIPAddress"
}