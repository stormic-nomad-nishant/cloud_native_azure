output "Machine-id" {
  value = "${azurerm_virtual_machine.generic-machine.*.id}"
}