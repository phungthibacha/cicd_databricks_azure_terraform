# Create a resource group
resource "azurerm_resource_group" "rg-terraform" {
  name     = "rg-terraform"
  location = "australiasoutheast"
}

# Create a storage account within the resource group
resource "azurerm_storage_account" "storageaccount" {
  name                     = "stgaccterraformdemo"
  resource_group_name      = azurerm_resource_group.rg-terraform.name
  location                 = azurerm_resource_group.rg-terraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Create a Databricks workspace within the resource group
resource "azurerm_databricks_workspace" "dbs-workspace" {
  name                = "dataengprojecttfdemo"
  resource_group_name = azurerm_resource_group.rg-terraform.name
  location            = azurerm_resource_group.rg-terraform.location
  sku                 = "premium"
  managed_resource_group_name = "mrg-dataengprojecttfdemo"
  }
