variable "powerdns_api_key" {
  description = "API key for authentication with PowerDNS server"
  type        = string
  sensitive   = true

  validation {
    condition     = length(var.powerdns_api_key) > 0
    error_message = "PowerDNS API key cannot be empty"
  }
}

variable "server_url" {
  description = "Server URL for accessing the DNS server"
  type        = string
}

