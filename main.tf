resource "azurerm_resource_group" "example" {
  name     = "Test-RG"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "storage0101maccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}