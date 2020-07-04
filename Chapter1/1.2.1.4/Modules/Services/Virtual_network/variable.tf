variable "storage-account-name" {
  default = "linkedinstg"
}
variable "storage-container-name" {
  default = "linkedin-devs"
}
variable "v-network-key-name" {
  default = "linkedin-virtual-network"
}

#*********************************
variable "network-secgrp-name" {
  default = "test"
}
variable "resource-grp-name" {
  default = "test"
}
variable "azure-dc" {
  default = "eastus"
}

#*********************************
variable "ddos-proc-name" {
  default = "test"
}

#*********************************

variable "vpc-cidr" {
  type = list
  default = ["10.0.0.0/16"]
}
variable "vpc-name" {
  default = "test"
}
variable "subnet1-name" {
  default = "linkedin-private-a"
}
variable "subnet1-cidr" {
  default = "10.0.1.0/24"
}
variable "subnet2-name" {
  default = "linkedin-private-b"
}
variable "subnet2-cidr" {
  default = "10.0.2.0/24"
}
variable "subnet3-name" {
  default = "linkedin-public-a"
}
variable "subnet3-cidr" {
  default = "10.0.3.0/24"
}
variable "subnet4-name" {
  default = "linkedin-public-b"
}
variable "subnet4-cidr" {
  default = "10.0.4.0/24"
}
variable "env-type" {
  default = "Devlopment"
}
