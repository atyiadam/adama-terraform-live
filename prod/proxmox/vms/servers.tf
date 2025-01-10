locals {
  dns_servers = {
    "powerdns-master" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "900"
      cpu          = "1"
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
      memory       = "1024"
      ipv4_address = "10.10.30.100/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = var.dns_domain
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    "dockerhost" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "900"
      cpu          = "1"
      memory       = "1024"
      ipv4_address = "10.10.30.101/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = var.dns_domain
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
  }

  k8s_01_cluster = {
    # Server CIDR: 10.10.30.152/30 (152-155)
    "server-01" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "901"
      cpu          = "2"
      memory       = "4096"
      ipv4_address = "10.10.30.152/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    "server-02" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "901"
      cpu          = "2"
      memory       = "4096"
      ipv4_address = "10.10.30.153/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    "server-03" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "901"
      cpu          = "2"
      memory       = "4096"
      ipv4_address = "10.10.30.154/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
    # Agent CIDR: 10.10.30.156/30 (156-159)
    "agent-01" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "901"
      cpu          = "2"
      memory       = "4096"
      ipv4_address = "10.10.30.156/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
      dns_a_record = true
      dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    }
  }

  test_servers = {
  }
}
