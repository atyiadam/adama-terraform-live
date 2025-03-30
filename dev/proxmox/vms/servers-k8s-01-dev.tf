locals {
  k8s_01_dev_cluster = {
    # Cluster CIDR: 10.10.30.128/28 (128-143)
    # Server CIDR: 10.10.30.128/29 (128-135)
    # "server-01" = {
    #   vm_node      = "proxmox-pve-02"
    #   clone_vm_id  = "922"
    #   cpu          = "2"
    #   cpu_type     = "host"
    #   memory       = "4096"
    #   ipv4_address = "10.10.30.128/24"
    #   ipv4_gw      = var.default_gw_ip
    #   dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
    #   dns_a_record = true
    #   dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    # }
    # "server-02" = {
    #   vm_node      = "proxmox-pve-02"
    #   clone_vm_id  = "922"
    #   cpu          = "2"
    #   cpu_type     = "host"
    #   memory       = "4096"
    #   ipv4_address = "10.10.30.129/24"
    #   ipv4_gw      = var.default_gw_ip
    #   dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
    #   dns_a_record = true
    #   dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    # }
    # "server-03" = {
    #   vm_node      = "proxmox-pve-01"
    #   clone_vm_id  = "921"
    #   cpu          = "2"
    #   cpu_type     = "host"
    #   memory       = "4096"
    #   ipv4_address = "10.10.30.130/24"
    #   ipv4_gw      = var.default_gw_ip
    #   dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
    #   dns_a_record = true
    #   dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    # }
    # # Agent CIDR: 10.10.30.136/29 (136-143)
    # "agent-01" = {
    #   vm_node      = "proxmox-pve-01"
    #   clone_vm_id  = "911"
    #   cpu          = "2"
    #   cpu_type     = "host"
    #   memory       = "4096"
    #   ipv4_address = "10.10.30.136/24"
    #   ipv4_gw      = var.default_gw_ip
    #   dns_domain   = "k8s-01.${var.env}.${var.dns_domain}"
    #   dns_a_record = true
    #   dns_servers  = ["127.0.0.1", var.dns_ns_ip]
    # }
  }
}
