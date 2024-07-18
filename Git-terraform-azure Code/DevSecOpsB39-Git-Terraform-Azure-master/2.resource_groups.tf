# resource "type-of-resource" "name-of-the-resource-in-terraform-code" {
#     arg1 = ??
#     arg2 = ??
#     arg3 = ??
# }

resource "azurerm_resource_group" "devsecopsb39-rg1" {
  name     = "devsecopsb39-rg1-eastus"
  location = "eastus"
  tags = {
    BatchNumber = "B39"
    SUPERSTAR   = "MAHESH"
  }
}

resource "azurerm_resource_group" "devsecopsb39-rg2" {
  name     = "devsecopsb39-rg2-westus"
  location = "westus"
  tags = {
    BatchNumber = "B39"
    SUPERSTAR   = "MAHESH"
  }
}

resource "azurerm_resource_group" "devsecopsb39-rg3" {
  name     = "devsecopsb39-rg2-ceindia"
  location = "centralindia"
  tags = {
    BatchNumber = "B39"
    SUPERSTAR   = "MAHESH"
  }
}