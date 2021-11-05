variable "resource-grp-name" {
  description = "The name of the resource group the LB rule belongs to"
}

variable "name_of_lb_rule" {
  description = "Name of the Load Balancing rule"
}

variable "protocol" {
  description = "The protocol which the rule applies to (Tcp/Udp)"
}

variable "azure-dc" {
  description = "The name of Azure DC"
}

variable "frontend_port" {
  description = "The frontend port (ie. externally facing)"
}

variable "backend_port" {
  description = "The port on the backend services where the rule routes to"
}

variable "front_end_config_name" {
  description = "The frontend IP configuration of the LB which the rule attaches to"
}

variable "backend_pool_name" {
  description = "The backend IP address pool of the LB which the rule attaches to"
}

variable "name_of_lb"{
  description = "Name of the loadbalancer"
}

variable "public_ip_id"{
  description = "Public IP ID"
}

variable "azurerm_lb_probe_name"{
  description = "Azure LB probe name"
}