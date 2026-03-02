resource "azuread_application" "app_reg_cezzis_platform_onprem" {
  display_name = "appr-${var.sub}-cezzis-platform-onprem"
  lifecycle {
    prevent_destroy = true
  }
}

resource "azuread_service_principal" "app_reg_cezzis_platform_onprem_service_principal" {
  client_id                    = azuread_application.app_reg_cezzis_platform_onprem.client_id
  app_role_assignment_required = false
  feature_tags {
    enterprise = true
    hide       = true
  }
  lifecycle {
    prevent_destroy = true
  }
}