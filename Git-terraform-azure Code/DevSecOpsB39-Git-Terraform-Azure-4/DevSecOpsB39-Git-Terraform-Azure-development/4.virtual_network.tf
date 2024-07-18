resource "azurerm_virtual_network" "vnet1" {
  name                = "${azurerm_resource_group.rg1.name}-vNET1"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  address_space       = var.vnet1_address_space
  tags = {
    BatchNumber = var.batch_number
    Environment = var.env
  }
}

resource "azurerm_subnet" "subnet-1" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-1"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet1_cidr]
}

resource "azurerm_subnet" "subnet-2" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-2"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet2_cidr]
}

resource "azurerm_subnet" "subnet-3" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-3"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet3_cidr]
}