# Manages client applications that are pre-authorized with the specified permissions to access an application's APIs without requiring user consent.
# This example usage creates One audience application, one client application and then client app is pre-authorized with OAuth scope permission

module "azurerm_app_pre_authorized" {
  source                = "Pujago/azuread-app-registration/azurerm"
  
  # Service application/ Audience which has oauth2_permission_scope
  application_object_id = "3d1c1675-fff2-49e5-b2eb-b6eff382926d"

  #authorized application (client application)
  authorized_app_id     = "353e30c9-4851-4617-8a0b-761236bee893"
  permission_ids        = ["ced9c4c3-c273-4f0f-ac71-a20377b90f9c", "2d5e07ca-664d-4d9b-ad61-ec07fd215213"]
}