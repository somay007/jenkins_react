provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "rgasp" {
  location = var.location
  name = var.resource_group_name
  
}
data "azurerm_client_config" "name" {}

resource "azurerm_service_plan" "plan" {
  location = azurerm_resource_group.rgasp.location
  name = var.service_plan_name
  os_type = var.os
  resource_group_name = azurerm_resource_group.rgasp.name
  sku_name = var.pricing_plan
  
}

resource "azurerm_windows_web_app" "serviceApp" {
  service_plan_id = azurerm_service_plan.plan.id
  location = azurerm_service_plan.plan.location
  name = var.linux_web_app_name
  resource_group_name = azurerm_resource_group.rgasp.name
  site_config {
    application_stack {
      node_version = var.node_version
    }
  }
}
