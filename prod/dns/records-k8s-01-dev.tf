# k8s-01 prod related DNS records
resource "powerdns_record" "k8s-01-dev-api-server-a" {
  zone    = "k8s-01.dev.home.adamatyi.com."
  name    = "kubernetes-api.k8s-01.dev.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.131"]

  depends_on = [powerdns_zone.ns-home]
}

