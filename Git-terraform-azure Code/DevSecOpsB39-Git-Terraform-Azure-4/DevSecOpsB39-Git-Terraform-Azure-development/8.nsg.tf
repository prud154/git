resource "azurerm_network_security_group" "web-nsg" {
  name                = "${azurerm_resource_group.rg1.name}-web-nsg"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_network_security_group" "app-nsg" {
  name                = "${azurerm_resource_group.rg1.name}-app-nsg"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_network_security_group" "db-nsg" {
  name                = "${azurerm_resource_group.rg1.name}-db-nsg"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}