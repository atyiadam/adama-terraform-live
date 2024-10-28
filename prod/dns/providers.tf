provider "powerdns" {
  api_key    = var.powerdns_api_key
  server_url = format("http://%s:%s", local.ns_ip_address, local.api_port)
}
