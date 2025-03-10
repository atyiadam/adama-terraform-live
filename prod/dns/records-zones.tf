# Primary zone
resource "powerdns_zone" "ns-home" {
  name        = "home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]
}

# Production zone
resource "powerdns_zone" "prod" {
  name        = "prod.home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]
}

# Development zone
resource "powerdns_zone" "dev" {
  name        = "dev.home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]
}

# k8s-01 prod cluster zone
resource "powerdns_zone" "k8s_01" {
  name        = "k8s-01.prod.home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]

  depends_on = [powerdns_zone.prod] 
}

# k8s-01 dev cluster zone
resource "powerdns_zone" "k8s_01_dev" {
  name        = "k8s-01.dev.home.adamatyi.com."
  kind        = "Native"
  nameservers = ["ns1.home.adamatyi.com."]

  depends_on = [powerdns_zone.dev] 
}
