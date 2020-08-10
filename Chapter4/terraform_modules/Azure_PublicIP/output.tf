output "id" {
  value = "${azurerm_public_ip.generic-public-ip.id}"
}

output "public_ip_address" {
  value = "${azurerm_public_ip.generic-public-ip.ip_address}"
}

output "fqdn"{
  value = "${azurerm_public_ip.generic-public-ip.fqdn}"
}
