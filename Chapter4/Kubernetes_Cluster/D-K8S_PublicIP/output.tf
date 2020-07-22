output PublicIP_ID{
  value = "${module.K8S-API-Server-Public-IP.id}"
}

output Public_IP{
  value = "${module.K8S-API-Server-Public-IP.public_ip_address}"
}

output Public_FQDN{
  value = "${module.K8S-API-Server-Public-IP.fqdn}"
}
