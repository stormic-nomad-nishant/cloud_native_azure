output vnet_id {
  value = "${module.CNA-Virtual-Network.vnet_network_id}"
}


output subnet_id {
  value = "${module.CNA-Virtual-Network.subnet_id}"
}
