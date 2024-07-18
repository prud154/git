resource "azurerm_resource_group" "rg1" {
  name     = var.rg_name
  location = var.location
  tags = {
    BatchNumber = var.batch_number
    Environment = var.env
    Backup      = var.backup
  }
}
