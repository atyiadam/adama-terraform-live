provider "cloudflare" {
  # token pulled from $CLOUDFLARE_API_TOKEN
}

provider "keycloak" {
  client_id = "terraform-cli"
  url       = var.keycloak_url
  # Authentication options are commented out
}

provider "random" {}
