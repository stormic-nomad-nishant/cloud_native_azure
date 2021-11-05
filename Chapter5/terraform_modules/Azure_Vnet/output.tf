output "vnet_network_id"{
  value = "${azurerm_virtual_network.generic-vnet.id}"
}

output "vnet_guid"{
  value = "${azurerm_virtual_network.generic-vnet.guid}"
}

output "subnet_id"{
  value = "${azurerm_subnet.generic-subnet.id}"
}
