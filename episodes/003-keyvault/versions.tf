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
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.3.0"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}