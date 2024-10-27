variable "pm_api_url" {
  type = string
}

variable "pm_api_token_id" {
  type = string
}

variable "pm_api_token_secret" {
  type      = string
  sensitive = true
}

variable "dns_domain" {
  type = string
}

variable "dns_ns_ip" {
  type = string
}

variable "default_gw_ip" {
  type = string
}

variable "powerdns_api_key" {
  type      = string
  sensitive = true
}

