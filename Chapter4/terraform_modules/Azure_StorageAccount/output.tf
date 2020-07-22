output "Storage-Account-id" {
  value = "${azurerm_storage_account.generic-storage-ac.id}"
}

output "Container-id" {
  value = "${azurerm_storage_container.generic-container.id}"
}
output "Blob-id" {
  value = "${azurerm_storage_blob.generic-blob.id}"
}

output "Blob-URL" {
  value = "${azurerm_storage_blob.generic-blob.url}"
}

output "Storage-Primanry-Access-key" {
  value = "${azurerm_storage_account.generic-storage-ac.primary_access_key}"
}
