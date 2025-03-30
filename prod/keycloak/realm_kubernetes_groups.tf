resource "keycloak_group" "k8s-admins" {
  realm_id = keycloak_realm.kubernetes.id
  name     = "k8s-admins"
}
