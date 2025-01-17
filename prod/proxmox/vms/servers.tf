locals {
  dns_servers = {
    "powerdns-master" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "900"
      cpu          = "1"
      cpu_type     = var.default_cpu_type
      memory       = "1024"
      ipv4_address = "10.10.30.1/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = var.dns_domain
      dns_a_record = false
      dns_servers  = ["127.0.0.1", var.default_gw_ip]
    }
  }

  misc_servers = {
    "bastion" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "900"
      cpu          = "1"
      cpu_type     = var.default_cpu_type
      memory       = "1024"
      ipv4_address = "10.10.30.100/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = var.dns_domain
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    "dockerhost" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "901"
      cpu          = "1"
      cpu_type     = "host"
      memory       = "1024"
      ipv4_address = "10.10.30.101/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = var.dns_domain
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
  }

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

  k8s_01_cluster = {
    # Server CIDR: 10.10.30.144/29 (144-151)
    "server-01" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "902"
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
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "902"
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
      clone_vm_id  = "902"
      cpu          = "2"
      cpu_type     = "host"
      memory       = "4096"
      ipv4_address = "10.10.30.146/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    # Agent CIDR: 10.10.30.152/29 (152-160)
    "agent-01" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "902"
      cpu          = "2"
      cpu_type     = "host"
      memory       = "4096"
      ipv4_address = "10.10.30.152/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
  }

  test_servers = {
  }
}
