locals {
  short_ttl     = 300
  long_ttl      = 3600
  ns_ip_address = "10.10.30.1"
  api_port      = "8082"
}

## Nameserver related resources
resource "powerdns_zone" "ns-home" {
  name        = "home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]
}

resource "powerdns_record" "ns-a" {
  zone    = "home.adamatyi.com."
  name    = "ns1.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = [local.ns_ip_address]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "ns-soa" {
  zone    = "home.adamatyi.com."
  name    = "home.adamatyi.com."
  type    = "SOA"
  ttl     = local.long_ttl
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a]
}


## Random DNS resources
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

resource "powerdns_record" "k8s-01-prod-api-server-a" {
  zone    = "k8s-01.prod.home.adamatyi.com."
  name    = "kubernetes-api.k8s-01.prod.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.155"]

  depends_on = [powerdns_zone.ns-home]
}

## Zones
resource "powerdns_zone" "prod" {
  name        = "prod.home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]
}

resource "powerdns_record" "prod-soa" {
  zone    = "prod.home.adamatyi.com."
  name    = "prod.home.adamatyi.com."
  type    = "SOA"
  ttl     = local.long_ttl
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a]
}

resource "powerdns_zone" "k8s_01" {
  name        = "k8s-01.prod.home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]

  depends_on = [powerdns_zone.prod] 
}

resource "powerdns_record" "k8s-01-prod-soa" {
  zone    = "k8s-01.prod.home.adamatyi.com."
  name    = "k8s-01.prod.home.adamatyi.com."
  type    = "SOA"
  ttl     = local.long_ttl
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a]
}
