resource "random_password" "adama_admin_password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "keycloak_user" "adama-admin" {
  realm_id = keycloak_realm.kubernetes.id
  username = "adama-admin"
  enabled  = "true"

  email      = "atyiadam@gmail.com"
  first_name = "Adam"
  last_name  = "Atyi"

  initial_password {
    value     = random_password.adama_admin_password.result
    temporary = true
  }

  email_verified = true
}

output "adama_admin_password" {
  value       = random_password.adama_admin_password.result
  description = "Generated password for adama-admin user"
  sensitive   = true
}
