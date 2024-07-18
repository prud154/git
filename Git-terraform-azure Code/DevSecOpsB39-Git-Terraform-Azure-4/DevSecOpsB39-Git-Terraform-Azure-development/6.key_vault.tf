data "azurerm_client_config" "current" {}

# resource "azurerm_key_vault" "devsecopsb39kv" {
#   name                        = "devsecopsb39kv"
#   location                    = azurerm_resource_group.rg1.location
#   resource_group_name         = azurerm_resource_group.rg1.name
#   enabled_for_disk_encryption = true
#   tenant_id                   = data.azurerm_client_config.current.tenant_id
#   soft_delete_retention_days  = 7
#   purge_protection_enabled    = false

#   sku_name = "standard"
# }

# resource "azurerm_key_vault_secret" "password-1" {
#   name         = "password-1"
#   value        = random_password.password1.result
#   key_vault_id = azurerm_key_vault.devsecopsb39kv.id
#   depends_on   = [azurerm_key_vault_access_policy.devsecopsb39-sp-access]
# }

# resource "azurerm_key_vault_secret" "password-2" {
#   name         = "password-2"
#   value        = random_password.password2.result
#   key_vault_id = azurerm_key_vault.devsecopsb39kv.id
#   depends_on   = [azurerm_key_vault_access_policy.devsecopsb39-sp-access]
# }

# resource "azurerm_key_vault_secret" "password-3" {
#   name         = "password-3"
#   value        = random_password.password3.result
#   key_vault_id = azurerm_key_vault.devsecopsb39kv.id
#   depends_on   = [azurerm_key_vault_access_policy.devsecopsb39-sp-access]
# }

# resource "azurerm_key_vault_access_policy" "devsecopsb39-sp-access" {
#   key_vault_id = azurerm_key_vault.devsecopsb39kv.id
#   tenant_id    = data.azurerm_client_config.current.tenant_id
#   object_id    = data.azurerm_client_config.current.object_id

#   secret_permissions = [
#     "Get",
#     "List",
#     "Purge",
#     "Recover",
#     "Restore",
#     "Set",
#     "Delete",
#     "Recover"
#   ]
# }

# resource "azurerm_key_vault_access_policy" "sreeharsha-access" {
#   key_vault_id = azurerm_key_vault.devsecopsb39kv.id
#   tenant_id    = data.azurerm_client_config.current.tenant_id
#   object_id    = "9b0d53c3-8571-4780-bd20-1cefec1bd10f"

#   secret_permissions = [
#     "Get",
#     "List",
#     "Purge",
#     "Recover",
#     "Restore",
#     "Set",
#     "Delete",
#     "Recover"
#   ]
# }
