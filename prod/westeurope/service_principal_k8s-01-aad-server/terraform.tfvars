terragrunt = {
  dependencies {
    paths = [
      "../key_vault"
    ]
  }

  terraform {
    source = "git::git@github.com:teamdigitale/devita-infra-tf-modules.git//azurerm_service_principal"
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

# Service Principal module variables
app_name                                     = "k8s-01-aad-server"
app_type                                     = "k8s_aad_server"
azurerm_role_assignment_role_definition_name = "Contributor"
azurerm_key_vault_secret_name                = "k8s-01-aad-server-sp-secret"
