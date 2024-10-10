locals {
  vms = {
    "ubuntu-test-1" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "900"
      cpu          = "1"
      memory       = "2048"
      ipv4_address = "10.10.30.19/24"
      ipv4_gw      = "10.10.30.254"
    }
    "ubuntu-test-2" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "900"
      cpu          = "2"
      memory       = "1024"
      ipv4_address = "10.10.30.20/24"
      ipv4_gw      = "10.10.30.254"
    }
  }
}

module "proxmox_vm" {

  source = "github.com/atyiadam/adama-terraform-modules//proxmox/vm?ref=v0.0.1"

  for_each = local.vms

  vm_name = each.key
  vm_node     = each.value.vm_node
  clone_vm_id = each.value.clone_vm_id

  cpu    = each.value.cpu
  memory = each.value.memory

  ipv4_address = each.value.ipv4_address
  ipv4_gw      = each.value.ipv4_gw

}
