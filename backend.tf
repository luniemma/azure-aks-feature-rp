terraform {
  backend "azurerm" {
    # Note: The storage account name, container name, and key will be 
    # provided via CLI arguments in the GitHub Actions workflow
  }
}