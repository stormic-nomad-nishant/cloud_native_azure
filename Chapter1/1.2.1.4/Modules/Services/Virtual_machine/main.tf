resource "azurerm_virtual_machine" "generic-machine" {
  location = "${var.azure-dc}"
  count = "${var.instanace-count}"
  name = "${var.machine-name}"
  network_interface_ids = "${var.vir-nic}"
  resource_group_name = "${var.resource-grp-name}"
  vm_size = "${var.machine-type}"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "${var.sys_hostname}"
    admin_username = "${var.account_name}"
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      key_data = "${file("/Users/nissingh/IdeaProjects/id_rsa.pub")}"
      path = "/home/${var.account_name}/.ssh/authorized_keys"
    }
  }
  tags = {
    environment = "staging"
  }
}