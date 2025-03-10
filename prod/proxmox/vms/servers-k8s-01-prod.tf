locals {
  k8s_01_cluster = {
    # Server CIDR: 10.10.30.144/29 (144-151)
    "server-01" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "921"
      cpu          = "2"
      cpu_type     = "host"
      memory       = "4096"
      ipv4_address = "10.10.30.144/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    "server-02" = {
      vm_node      = "proxmox-pve-02"
      clone_vm_id  = "922"
      cpu          = "2"
      cpu_type     = "host"
      memory       = "4096"
      ipv4_address = "10.10.30.145/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    "server-03" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "921"
      cpu          = "2"
      cpu_type     = "host"
      memory       = "4096"
      ipv4_address = "10.10.30.146/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    # Agent CIDR: 10.10.30.152/29 (152-159)
    "agent-01" = {
      vm_node      = "proxmox-pve-02"
      clone_vm_id  = "912"
      cpu          = "2"
      cpu_type     = "host"
      memory       = "16384"
      ipv4_address = "10.10.30.152/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    "agent-02" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "911"
      cpu          = "2"
      cpu_type     = "host"
      memory       = "8192"
      ipv4_address = "10.10.30.153/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    "agent-03" = {
      vm_node      = "proxmox-pve-02"
      clone_vm_id  = "912"
      cpu          = "2"
      cpu_type     = "host"
      memory       = "8192"
      ipv4_address = "10.10.30.154/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
  }
}
