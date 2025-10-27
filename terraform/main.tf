terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.50.0"
    }

    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "=1.6.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

module "latest_project" {
  source             = "./projects/latest"
  global_environment = var.global_environment
  location           = var.location
  sub                = var.sub
  sequence           = var.sequence

  providers = {
    azurerm     = azurerm,
    azuredevops = azuredevops
  }
}
