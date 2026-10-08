# Storage account names need to be unique, adding random_string resource for this
resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_resource_group" "tfstate" {
  name     = "rg-tfstate-uks"
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "sttfstate${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}