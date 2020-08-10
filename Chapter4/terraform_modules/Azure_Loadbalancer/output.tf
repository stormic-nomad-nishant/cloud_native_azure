output "loadbalancer_id" {
  value = "${azurerm_lb.generic_lb.id}"
}

output "loadbalancer_private_ip" {
  value = "${azurerm_lb.generic_lb.private_ip_address}"
}


output "loadbalancer_frontend_id" {
  value = "${azurerm_lb.generic_lb.frontend_ip_configuration.0.id}"
}

output "loadbalancer_public_ip" {
  value = "${azurerm_lb.generic_lb.frontend_ip_configuration.0.public_ip_address_id}"
}

output "lb_backend_pool" {
  value = "${azurerm_lb_backend_address_pool.lbpool.id}"
}