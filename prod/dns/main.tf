locals {
  short_ttl     = 300
  long_ttl      = 3600
  ns_ip_address = "10.10.30.1"
  api_port      = "8082"
}

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

