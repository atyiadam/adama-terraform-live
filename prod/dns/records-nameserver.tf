# Nameserver related records
resource "powerdns_record" "ns-a" {
  zone    = "home.adamatyi.com."
  name    = "ns1.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = [local.ns_ip_address]

  depends_on = [powerdns_zone.ns-home]
}
