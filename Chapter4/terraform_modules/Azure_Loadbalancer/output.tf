output "loadbalancer_id" {
  value = "${azurerm_lb.generic_lb.id}"
}

output "loadbalancer_private_ip" {
  value = "${azurerm_lb.generic_lb.private_ip_address}"
}


output "loadbalancer_frontend_id" {
  value = "${azurerm_lb.generic_lb.frontend_ip_configuration.id}"
}

output "loadbalancer_public_ip" {
  value = "${azurerm_lb.generic_lb.frontend_ip_configuration.public_ip_address_id}"
}
