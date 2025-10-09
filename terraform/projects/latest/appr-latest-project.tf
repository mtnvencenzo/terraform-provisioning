resource "azuread_application" "app_reg_latest_project" {
  display_name = "appr-${var.sub}-devops-project-latest"
  lifecycle {
    prevent_destroy = true
  }
}

resource "azuread_service_principal" "app_reg_latest_project_service_principal" {
  client_id                    = azuread_application.app_reg_latest_project.client_id
  app_role_assignment_required = false
  feature_tags {
    enterprise = true
    hide       = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_role_assignment" "app_reg_latest_project_sc_terraform_storage_account_auth_role_assignment" {
  scope                = data.azurerm_storage_account.terraform_storage_account.id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.app_reg_latest_project_service_principal.object_id

  lifecycle {
    prevent_destroy = false
  }
}

