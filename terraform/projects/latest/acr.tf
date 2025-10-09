resource "azurerm_container_registry" "acr_latest_project" {
  name                  = "acr${var.sub}${var.region}${var.global_environment}shared${var.sequence}"
  resource_group_name   = azurerm_resource_group.latest_project_global_shared_resource_group.name
  location              = azurerm_resource_group.latest_project_global_shared_resource_group.location
  sku                   = "Basic"
  admin_enabled         = true
  data_endpoint_enabled = false
  identity {
    type = "SystemAssigned"
  }
  tags = {
    Environment = "${var.global_environment}"
    Application = "shared"
  }
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      tags
    ]
  }
}