# variable "keycloak_url" {
#   description = "Keycloak URL for accessing the keycloak server"
#   type        = string
# }


variable "powerdns_api_key" {
  description = "API key for PowerDNS authentication"
  type        = string
  sensitive   = true
}
