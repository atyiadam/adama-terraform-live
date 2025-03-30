resource "keycloak_user_groups" "adama-admin" {
  realm_id = keycloak_realm.kubernetes.id
  user_id  = keycloak_user.adama-admin.id

  group_ids = [
    keycloak_group.k8s-admins.id
  ]
}
