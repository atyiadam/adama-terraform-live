resource "powerdns_zone" "ns-home" {
  name        = "home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]
}

resource "powerdns_record" "ns-a" {
  zone    = "home.adamatyi.com."
  name    = "ns1.home.adamatyi.com."
  type    = "A"
  ttl     = 300
  records = ["10.10.30.1"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "ns-soa" {
  zone    = "home.adamatyi.com."
  name    = "home.adamatyi.com."
  type    = "SOA"
  ttl     = 3600
  records = ["ns1.home.adamatyi.com. atyiadam.gmail.com. 2024102501 3600 600 1814400 7200"]

  depends_on = [powerdns_record.ns-a]
}

