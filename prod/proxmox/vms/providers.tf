provider "proxmox" {
  endpoint  = var.pm_api_url
  api_token = "${var.pm_api_token_id}=${var.pm_api_token_secret}"
  insecure  = true
}

provider "powerdns" {
  api_key    = var.powerdns_api_key
  server_url = "http://${var.dns_ns_ip}:8082"
}
