data "azurerm_dns_zone" "azureb40" {
  name                = "azureb40.xyz"
  resource_group_name = "common-rg"
}

resource "azurerm_dns_a_record" "vm1-dev" {
  name                = "vm1"
  zone_name           = data.azurerm_dns_zone.azureb40.name
  resource_group_name = data.azurerm_dns_zone.azureb40.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.200"]
}

resource "azurerm_dns_a_record" "vm2-dev" {
  name                = "vm2"
  zone_name           = data.azurerm_dns_zone.azureb40.name
  resource_group_name = data.azurerm_dns_zone.azureb40.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.201"]
}

resource "azurerm_dns_a_record" "vm3" {
  name                = "vm3"
  zone_name           = data.azurerm_dns_zone.azureb40.name
  resource_group_name = data.azurerm_dns_zone.azureb40.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.202"]
}

resource "azurerm_dns_a_record" "vm4" {
  name                = "vm4"
  zone_name           = data.azurerm_dns_zone.azureb40.name
  resource_group_name = data.azurerm_dns_zone.azureb40.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.203"]
}

resource "azurerm_dns_a_record" "vm5" {
  name                = "vm5"
  zone_name           = data.azurerm_dns_zone.azureb40.name
  resource_group_name = data.azurerm_dns_zone.azureb40.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.205"]
}

resource "azurerm_dns_a_record" "vm6-dev" {
  name                = "vm6"
  zone_name           = data.azurerm_dns_zone.azureb40.name
  resource_group_name = data.azurerm_dns_zone.azureb40.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.206"]
}

