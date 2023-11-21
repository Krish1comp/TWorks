provider "azurerm" {
  features {

  }
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

}


resource "azurerm_virtual_network" "network" {
  name                = "virtual_network"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_storage_account" "statefile" {
  name                     = "terraformstoragekrishsmk"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"


}
resource "azurerm_storage_container" "blob" {
  name                 = "terraformtfstate"
  storage_account_name = azurerm_storage_account.statefile.name

}


resource "azurerm_kubernetes_cluster" "mediawikiaks" {
  name                = "mediawiki"
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = "mediawiki"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"

  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_container_registry" "myacr" {
  name                = "myacrkrishsmk"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = true
}
