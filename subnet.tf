# Subnet
resource "azurerm_subnet" "mewo-subnet" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.mewo-rg.name
  virtual_network_name = azurerm_virtual_network.mewo-vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}