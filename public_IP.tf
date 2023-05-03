# Public IPs
resource "azurerm_public_ip" "mewo-ip" {
    name                         = "${var.prefix}"
    location                     = azurerm_resource_group.mewo-rg.location
    resource_group_name          = azurerm_resource_group.mewo-rg.name
    allocation_method            = "Dynamic"

    tags = {
      environment = "${var.environment}"
      owner       = "${var.prefix}"
      label       = "Public IP"
      project     = "${var.project}"
    }
}

output "public_ip" {
  value = azurerm_public_ip.mewo-ip.ip_address
}