output master_machine_id{
  value = "${module.master.*.machine_id}"
}

output master_machine_name{
  value = "${module.master.*.name}"
}

output master_machine_private_ips{
  value = "${module.master.*.private_ip_addresses}"
}


output worker_machine_id{
  value = "${module.worker.*.machine_id}"
}

output worker_machine_name{
  value = "${module.worker.*.name}"
}

output worker_machine_private_ips{
  value = "${module.worker.*.private_ip_addresses}"
}