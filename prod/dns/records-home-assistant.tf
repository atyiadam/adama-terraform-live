resource "powerdns_record" "home-assistant-a" {
  zone    = "home.adamatyi.com."
  name    = "home-assistant.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}
