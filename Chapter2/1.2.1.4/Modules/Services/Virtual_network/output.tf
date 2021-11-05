output "vpc-id" {
  value = "${azurerm_virtual_network.generic-virtual-cloud.id}"
}

output "vpc-cidr" {
  value = "${azurerm_virtual_network.generic-virtual-cloud.address_space}"
}

output "private-subnet-a-id" {
  value = "${azurerm_subnet.private-subnet-a.id}"
}


output "private-subnet-b-id" {
  value = "${azurerm_subnet.private-subnet-b.id}"
}


output "public-subnet-a-id" {
  value = "${azurerm_subnet.public-subnet-a.id}"
}


output "public-subnet-b-id" {
  value = "${azurerm_subnet.public-subnet-b.id}"
}

output "azure-private-nic-ids" {
  value = "${azurerm_network_interface.private-nic.id}"
}

output "azure-public-nic-ids" {
  value = "${azurerm_network_interface.public-nic.id}"
}