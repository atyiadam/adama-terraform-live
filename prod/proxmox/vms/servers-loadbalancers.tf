locals {
  loadbalancers = {
    "haproxy-1" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "901"
      cpu          = "1"
      cpu_type     = var.default_cpu_type
      memory       = "1024"
      ipv4_address = "10.10.30.110/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = var.dns_domain
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
  }
}
