resource "keycloak_realm" "kubernetes" {
  realm        = "kubernetes"
  enabled      = true
  display_name = "kubernetes"
}

