# main.tf
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Use the latest 3.x version
    }
  }
}

# Configure the Azure provider
provider "azurerm" {
  features {}
}
module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}
module "aks_cluster" {
  source              = "./modules/aks"
  name                = var.cluster_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  node_vm_size        = var.node_vm_size
  environment         = var.environment
}