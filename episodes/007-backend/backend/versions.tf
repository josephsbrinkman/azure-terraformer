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
    resource_group_name  = "rg-tf-state"
    storage_account_name = "statefile29wede"
    container_name       = "tfstate"
    key                  = "backend.tfstate"
  
}
}

provider "azurerm" {
  features {
  }
}