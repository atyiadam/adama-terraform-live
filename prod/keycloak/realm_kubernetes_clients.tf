resource "keycloak_openid_client" "k8s-01-prod" {
  realm_id    = keycloak_realm.kubernetes.id
  client_id   = "k8s-01-prod"
  name        = "k8s-01-prod"
  description = "Client for k8s-01-prod cluster OIDC authentication"

  enabled                      = true
  access_type                  = "CONFIDENTIAL"
  standard_flow_enabled        = true
  direct_access_grants_enabled = true

  valid_redirect_uris = [
    "http://localhost:8000"
  ]
}

resource "keycloak_openid_client" "k8s-01-dev" {
  realm_id    = keycloak_realm.kubernetes.id
  client_id   = "k8s-01-dev"
  name        = "k8s-01-dev"
  description = "Client for k8s-01-dev cluster OIDC authentication"

  enabled                      = true
  access_type                  = "CONFIDENTIAL"
  standard_flow_enabled        = true
  direct_access_grants_enabled = true

  valid_redirect_uris = [
    "http://localhost:8000"
  ]
}
