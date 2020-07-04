output "public-ip-id" {
  value = "${azurerm_public_ip.generic-ip.id}"
}

output "public-ip" {
  value = "${azurerm_public_ip.generic-ip.ip_address}"
}

output "public-fqdn" {
  value = "${azurerm_public_ip.generic-ip.fqdn}"
}