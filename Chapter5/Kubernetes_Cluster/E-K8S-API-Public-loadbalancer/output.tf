output load_balancer_id{
  value = "${module.K8S-API-Public-loadbalancer-master.loadbalancer_id}"
}

output load_balancer_private_ip{
  value = "${module.K8S-API-Public-loadbalancer-master.loadbalancer_private_ip}"
}

output load_balancer_frontend_id{
  value = "${module.K8S-API-Public-loadbalancer-master.loadbalancer_frontend_id}"
}

output load_balancer_public_ip{
  value = "${module.K8S-API-Public-loadbalancer-master.loadbalancer_public_ip}"
}

output lb_backend_pool {
  value = "${module.K8S-API-Public-loadbalancer-master.lb_backend_pool}"
}