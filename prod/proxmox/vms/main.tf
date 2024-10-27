locals {
  vms = {
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
    "test13" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "900"
      cpu          = "1"
      memory       = "1024"
      ipv4_address = "10.10.30.13/24"
      ipv4_gw      = var.default_gw_ip
      dns_domain   = var.dns_domain
      dns_a_record = true
      dns_servers  = [var.dns_ns_ip]
    }
  }
}

module "proxmox_vm" {

  source = "github.com/atyiadam/adama-terraform-modules//proxmox/vm?ref=v0.0.6"

  for_each = local.vms

  vm_name     = each.key
  vm_node     = each.value.vm_node
  clone_vm_id = each.value.clone_vm_id

  cpu    = each.value.cpu
  memory = each.value.memory

  ipv4_address = each.value.ipv4_address
  ipv4_gw      = each.value.ipv4_gw

  dns_a_record = each.value.dns_a_record
  dns_domain   = each.value.dns_domain
  dns_servers  = each.value.dns_servers

}
