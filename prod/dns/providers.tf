provider "powerdns" {
  api_key    = var.powerdns_api_key
  server_url = format("http://%s:%s", local.ns_ip_address, local.api_port)
}

provider "cloudflare" {
  # token pulled from $CLOUDFLARE_API_TOKEN
}

