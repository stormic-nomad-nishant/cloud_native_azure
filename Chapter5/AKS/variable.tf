

variable "agent_count" {
    default = 5
}

variable "ssh_public_key" {
    default = "/Users/nissingh/TESTING/SSH_KEYS/id_rsa.pub"
}

variable "dns_prefix" {
    default = "akstest"
}

variable cluster_name {
    default = "akstest"
}

variable resource_group_name {
    default = "azure-k8stest"
}

variable location {
    default = "eastus2"
}

variable log_analytics_workspace_name {
    default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "eastus2"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}
