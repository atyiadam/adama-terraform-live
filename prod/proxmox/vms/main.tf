locals {
  vms = {
    "powerdns-master" = {
      vm_node      = "proxmox-pve-01"
      clone_vm_id  = "900"
      cpu          = "1"
      memory       = "1024"
      ipv4_address = "10.10.30.1/24"
      ipv4_gw      = "10.10.30.254"
    }
  }
}

module "proxmox_vm" {

  source = "github.com/atyiadam/adama-terraform-modules//proxmox/vm?ref=v0.0.2"

  for_each = local.vms

  vm_name = each.key
  vm_node     = each.value.vm_node
  clone_vm_id = each.value.clone_vm_id

  cpu    = each.value.cpu
  memory = each.value.memory

  ipv4_address = each.value.ipv4_address
  ipv4_gw      = each.value.ipv4_gw

}
