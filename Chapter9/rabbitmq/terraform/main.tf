terraform {
  required_providers {
    rabbitmq = {
      source = "cyrilgdn/rabbitmq"
      version = "1.5.1"
    }
  }
}

provider "rabbitmq" {
  endpoint = "http://192.168.2.31:15672"
  username = "guest"
  password = "guest"
}

# Create a virtual host
resource "rabbitmq_vhost" "suricata" {
  name = "suricata"
}

resource "rabbitmq_permissions" "guest" {
  user  = "guest"
  vhost = "{rabbitmq_vhost.suricata.name}"

  permissions {
    configure = ".*"
    write     = ".*"
    read      = ".*"
  }
}
