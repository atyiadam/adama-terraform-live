# k8s-01 prod related DNS records
resource "powerdns_record" "k8s-01-prod-api-server-a" {
  zone    = "k8s-01.prod.home.adamatyi.com."
  name    = "kubernetes-api.k8s-01.prod.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.147"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "argocd-k8s-01-prod-a" {
  zone    = "home.adamatyi.com."
  name    = "argocd-k8s-01-prod.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "longhorn-k8s-01-prod-a" {
  zone    = "home.adamatyi.com."
  name    = "longhorn-k8s-01-prod.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}
