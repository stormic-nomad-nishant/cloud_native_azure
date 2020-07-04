output "lb-id" {
  value = "${azurerm_lb.generic-lb.id}"
}

output "lb-private-ip" {
  value = "${azurerm_lb.generic-lb.private_ip_address}"
}

output "lb-backend-pool-id" {
  value = "${azurerm_lb_backend_address_pool.generic-be-pool.id}"
}

output "lb-backend-ip-conf" {
  value = "${azurerm_lb_backend_address_pool.generic-be-pool.backend_ip_configurations}"
}

output "lb-rules" {
  value = "${azurerm_lb_backend_address_pool.generic-be-pool.load_balancing_rules}"
}
