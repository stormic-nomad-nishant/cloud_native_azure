output "machine_id" {
  value = "${azurerm_virtual_machine.vm.*.id}"
}

output "name" {
  value = "${azurerm_virtual_machine.vm.*.name}"
}

output "private_ip_addresses" {
  value = "${azurerm_network_interface.generic-nic.*.private_ip_address}"
}