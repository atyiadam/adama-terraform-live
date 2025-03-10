# Infrastructure related DNS records
resource "powerdns_record" "synology-a" {
  zone    = "home.adamatyi.com."
  name    = "synology.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.2"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "proxmox-a" {
  zone    = "home.adamatyi.com."
  name    = "proxmox.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "traefik-dashboard-a" {
  zone    = "home.adamatyi.com."
  name    = "traefik-dashboard.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.101"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "keycloak-a" {
  zone    = "home.adamatyi.com."
  name    = "keycloak.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.101"]

  depends_on = [powerdns_zone.ns-home]
}
