output PublicIP_ID{
  value = "${module.K8S-API-Server-Public-IP.id}"
}

output Public_IP{
  value = "${module.K8S-API-Server-Public-IP.public_ip_address}"
}

output Public_FQDN{
  value = "${module.K8S-API-Server-Public-IP.fqdn}"
}


output Worker0_IP{
  value = "${module.Worker0.public_ip_address}"
}
output Worker1_IP{
  value = "${module.Worker1.public_ip_address}"
}
output Worker2_IP{
  value = "${module.Worker2.public_ip_address}"
}

output Worker0_IP_ID{
  value = "${module.Worker0.id}"
}
output Worker1_IP_ID{
  value = "${module.Worker1.id}"
}
output Worker2_IP_ID{
  value = "${module.Worker2.id}"
}



output Controller0_IP{
  value = "${module.Controller0.public_ip_address}"
}
output Controller1_IP{
  value = "${module.Controller1.public_ip_address}"
}
output Controller2_IP{
  value = "${module.Controller2.public_ip_address}"
}

output Controller0_IP_ID{
  value = "${module.Controller0.id}"
}
output Controller1_IP_ID{
  value = "${module.Controller1.id}"
}
output Controller2_IP_ID{
  value = "${module.Controller2.id}"
}
