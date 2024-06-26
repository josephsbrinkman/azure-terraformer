terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"      
      version = "~> 3.107.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.2"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform"
    storage_account_name = "statefilef4m1du"
    container_name       = "tfstate"
    key                  = "azureterraformer.tfstate"
  
}
}

provider "azurerm" {
  features {
  }
}