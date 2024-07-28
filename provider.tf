terraform {

  required_version = ">= 1.1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.92.0"
    }
  }

}

provider "azurerm" {
  features {}
  subscription_id = "480dd862-f5d4-4580-bac3-b70384f25eb0"
  client_id       = "5954fae1-5855-49e4-ad34-a4ec4ce5d6b3"
  ##client_secret   = ""
  tenant_id       = "0ac55891-7c04-41ac-b10e-0d3fa2c8a464"
}