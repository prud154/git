resource "azurerm_storage_account" "devsecopsb39tfstate" {
  name                     = var.tfstate_storage_account
  resource_group_name      = "COMMON-RG"
  location                 = "eastus"
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags = {
    BatchNumber = var.batch_number
    Environment = var.env
  }
}