data "azurerm_key_vault" "devsecopsb39kv" {
  name                = "devsecopsb39kv"
  resource_group_name = "COMMON-RG"
}

resource "azurerm_key_vault_secret" "password-1-datasource" {
  name         = "password-1-datasource"
  value        = random_password.password1.result
  key_vault_id = data.azurerm_key_vault.devsecopsb39kv.id

}

resource "azurerm_key_vault_secret" "password-2-datasource" {
  name         = "password-2-datasource"
  value        = random_password.password2.result
  key_vault_id = data.azurerm_key_vault.devsecopsb39kv.id

}

resource "azurerm_key_vault_secret" "password-3-datasource" {
  name         = "password-3-datasource"
  value        = random_password.password3.result
  key_vault_id = data.azurerm_key_vault.devsecopsb39kv.id

}