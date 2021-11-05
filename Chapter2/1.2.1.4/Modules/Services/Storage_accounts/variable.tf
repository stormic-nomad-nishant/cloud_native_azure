# azure resource group
variable "resource-grp-name" {
  default = "test"
}

variable "azure-dc" {
  default = "eastus"
}
#*********************************

# azure storage account
variable "storage-account-name" {
  default = "test"
}
variable "storage-account-tier" {
  default = "Standard"
}
variable "storage-replication-type" {
  default = "LRS"
}
#*********************************

# azure storage container
variable "storage-container-name" {
  default = "testrandomthings"
}
variable "storage-container-access" {
  default = "private"
}
#*********************************

# azure storage blob
variable "blob-name" {
  default = "test"
}