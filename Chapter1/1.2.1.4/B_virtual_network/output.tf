output "vpc-id" {
  value = "${module.CloudNativeAzure-vnet.vpc-id}"
}

output "pub-nic-id" {
  value = "${module.CloudNativeAzure-vnet.azure-public-nic-ids}"
}

output "private-nic-id" {
  value = "${module.CloudNativeAzure-vnet.azure-private-nic-ids}"
}

output "public-subnet-a-id" {
  value = "${module.CloudNativeAzure-vnet.public-subnet-a-id}"
}

output "public-subnet-b-id" {
  value = "${module.CloudNativeAzure-vnet.private-subnet-b-id}"
}

output "private-subnet-a-id" {
  value = "${module.CloudNativeAzure-vnet.private-subnet-a-id}"
}

output "private-subnet-b-id" {
  value = "${module.CloudNativeAzure-vnet.private-subnet-b-id}"
}
