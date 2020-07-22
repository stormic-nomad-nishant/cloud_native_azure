output load_balancer_id{
  value = "${module.K8S-API-Public-loadbalancer.loadbalancer_id}"
}

output load_balancer_private_ip{
  value = "${module.K8S-API-Public-loadbalancer.loadbalancer_private_ip}"
}

output load_balancer_frontend_id{
  value = "${module.K8S-API-Public-loadbalancer.loadbalancer_frontend_id}"
}

output load_balancer_public_ip{
  value = "${module.K8S-API-Public-loadbalancer.loadbalancer_public_ip}"
}
