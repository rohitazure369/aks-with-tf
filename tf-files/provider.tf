terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.7.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "RG-TF-DEMO"
    storage_account_name = "rktfstatesa2024"
    container_name       = "terraform"
    key                  = "dev.tfstate"
  }
  }
  

provider "azurerm" {
  features {}
  use_msi = true
}

