terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.104.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = var.sub-id
  tenant_id = var.tenant-id
  client_id = var.client-id
  client_secret = var.client-secret
  features {}

  skip_provider_registration = true
}