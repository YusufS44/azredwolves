#Blob storage
resource "azurerm_resource_group" "club-100" {
  name     = "club-200"
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = "redwolves"
  resource_group_name      = azurerm_resource_group.club-100.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  depends_on = [ azurerm_resource_group.club-100 ]
}

resource "azurerm_storage_container" "sc" {
  name = "redwolves-container"
  storage_account_name = azurerm_storage_account.sa.name
}

resource "azurerm_storage_blob" "blob-82" {
  name                   = "redwolves-87"
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.sc.name
  type                   = "Block"
  source                 = "redwolves logo.png"
}