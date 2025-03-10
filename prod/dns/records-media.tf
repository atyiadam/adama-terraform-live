# Media service DNS records
resource "powerdns_record" "jellyfin-a" {
  zone    = "home.adamatyi.com."
  name    = "jellyfin.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "prowlarr-a" {
  zone    = "home.adamatyi.com."
  name    = "prowlarr.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "radarr-a" {
  zone    = "home.adamatyi.com."
  name    = "radarr.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "sonarr-a" {
  zone    = "home.adamatyi.com."
  name    = "sonarr.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}

resource "powerdns_record" "qbittorrent-a" {
  zone    = "home.adamatyi.com."
  name    = "qbittorrent.home.adamatyi.com."
  type    = "A"
  ttl     = local.short_ttl
  records = ["10.10.30.110"]

  depends_on = [powerdns_zone.ns-home]
}
