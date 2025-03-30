variable "pm_api_url" {
  type        = string
  description = "Proxmox API URL endpoint"
  validation {
    condition     = can(regex("^https?://", var.pm_api_url))
    error_message = "The pm_api_url must be a valid URL starting with http:// or https://"
  }
}

variable "pm_api_token_id" {
  type        = string
  description = "Proxmox API token ID (e.g., 'root@pam!terraform')"
}

variable "pm_api_token_secret" {
  type        = string
  sensitive   = true
  description = "Proxmox API token secret"
}

variable "dns_domain" {
  type        = string
  description = "DNS domain for the infrastructure (e.g., 'example.com')"
}

variable "dns_ns_ip" {
  type        = string
  description = "DNS nameserver IP address"
}

variable "default_gw_ip" {
  type = string
  validation {
    condition     = can(regex("^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$", var.default_gw_ip))
    error_message = "The default_gw_ip must be a valid IPv4 address"
  }
}

variable "powerdns_api_key" {
  type      = string
  sensitive = true
}

variable "env" {
  type        = string
  description = "Environment"
}

variable "default_cpu_type" {
  type        = string
  description = "Default CPU Type for VM"
}
