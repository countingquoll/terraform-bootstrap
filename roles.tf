resource "azurerm_role_definition" "deployer" {
  name        = "Livingstone Deployment Agent"
  scope       = data.azurerm_subscription.primary.id
  description = "Deployment of apps, with associated roles and role assignments"

  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]

  permissions {
    actions = [
      "Microsoft.Authorization/roleAssignments/delete",
      "Microsoft.Authorization/roleAssignments/write",
      "Microsoft.Authorization/roleDefinitions/delete",
      "Microsoft.Authorization/roleDefinitions/write",
      "Microsoft.KeyVault/locations/deletedVaults/purge/action",
      "Microsoft.KeyVault/vaults/accessPolicies/*",
      "Microsoft.KeyVault/vaults/delete",
      "Microsoft.KeyVault/vaults/write",
      "Microsoft.Resources/*",
      "Microsoft.Storage/*",
      "Microsoft.Web/certificates/Delete",
      "Microsoft.Web/certificates/Write",
      "Microsoft.Web/serverfarms/Delete",
      "Microsoft.Web/serverfarms/Write",
      "Microsoft.Web/serverfarms/Join/Action",
      "Microsoft.Web/serverfarms/restartSites/Action",
      "*/read",
      "*/register/action"
    ]
    data_actions = [
      "Microsoft.KeyVault/vaults/secrets/*"
    ]
  }
}