terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstatesa12342"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    subscription_id = "480dd862-f5d4-4580-bac3-b70384f25eb0"
  }
}