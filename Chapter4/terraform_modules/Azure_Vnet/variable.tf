variable "vnet-cidr" {
  default = ["10.240.0.0/24"]
  type = list
}


variable "resource-grp-name" {
  default = "test"
}

variable "azure-dc" {
  default = "eastus"
}


variable "vnet-name" {
  default = "test"
}

variable "env" {
  default = "stg"
}


variable "type-of-cluster" {
  default = "test"
}

variable "vnet-subnet-name" {
  default = "test"
}

variable "vnet-sec-group-name" {
  default = "test"
}