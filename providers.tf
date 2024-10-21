#providers.tf

provider "azurerm" {
  subscription_id = var.platform_landing_zone.subscription_ids.management
  features {}

}