resource "azurerm_resource_group" "tfstate" {
  name     = "rg-tfstate-uks"
  location = var.location
}