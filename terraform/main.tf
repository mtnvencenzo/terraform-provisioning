terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.58.0"
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
    azurerm     = azurerm
  }
}
