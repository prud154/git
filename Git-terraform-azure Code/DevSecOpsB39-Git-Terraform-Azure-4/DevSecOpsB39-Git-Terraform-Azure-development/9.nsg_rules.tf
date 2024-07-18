resource "azurerm_network_security_rule" "webservers-rule-tcp80" {
  count                       = 3
  name                        = "webservers-rule-tcp80"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "172.16.0.0/16"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.web-nsg.name
<<<<<<< HEAD
=======
}

resource "azurerm_network_security_rule" "appservers-rule-tcp80" {
  name                        = "appservers-rule-tcp80"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "172.16.0.0/16"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.app-nsg.name
}

resource "azurerm_network_security_rule" "dbservers-rule-tcp80" {
  name                        = "dbservers-rule-tcp80"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "172.16.0.0/16"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.db-nsg.name
>>>>>>> e39b747 (Added NSS RUor Web,App,DB)
}