# SOA records for each zone
resource "powerdns_record" "ns-soa" {
  zone    = "home.adamatyi.com."
  name    = "home.adamatyi.com."
  type    = "SOA"
  ttl     = local.long_ttl
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a]
}

resource "powerdns_record" "prod-soa" {
  zone    = "prod.home.adamatyi.com."
  name    = "prod.home.adamatyi.com."
  type    = "SOA"
  ttl     = local.long_ttl
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a]
}

resource "powerdns_record" "dev-soa" {
  zone    = "dev.home.adamatyi.com."
  name    = "dev.home.adamatyi.com."
  type    = "SOA"
  ttl     = local.long_ttl
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a, powerdns_zone.dev]
}

resource "powerdns_record" "k8s-01-prod-soa" {
  zone    = "k8s-01.prod.home.adamatyi.com."
  name    = "k8s-01.prod.home.adamatyi.com."
  type    = "SOA"
  ttl     = local.long_ttl
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a]
}

resource "powerdns_record" "k8s-01-dev-soa" {
  zone    = "k8s-01.dev.home.adamatyi.com."
  name    = "k8s-01.dev.home.adamatyi.com."
  type    = "SOA"
  ttl     = local.long_ttl
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a, powerdns_zone.k8s_01_dev]
}
