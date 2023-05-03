provider "azurerm" {
  features {}
}
terraform {
 backend "azurerm" {
 resource_group_name = "tfstate"
 storage_account_name = "tfstatesarah"
 container_name = "tfstate"
 key = "sarah.terraform.tfstate"
 }
}
