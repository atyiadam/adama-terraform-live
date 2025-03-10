locals {
  all_vms = merge(
    local.dns_servers,
    local.k8s_01_cluster,
    # local.misc_servers,
    local.bastions,
    local.dockerhosts,
    local.loadbalancers,
    local.test_servers
  )
}

module "proxmox_vm" {

  source = "github.com/atyiadam/adama-terraform-modules//proxmox/vm?ref=v0.0.11"
  # For local development
  # source = "../../../../adama-terraform-modules/proxmox/vm/"

  for_each = local.all_vms

  vm_name     = each.key
  vm_node     = each.value.vm_node
  clone_node_name= lookup(each.value, "clone_node_name", null)
  clone_vm_id = each.value.clone_vm_id

  cpu      = each.value.cpu
  cpu_type = each.value.cpu_type
  memory   = each.value.memory

  ipv4_address = each.value.ipv4_address
  ipv4_gw      = each.value.ipv4_gw

  dns_a_record = each.value.dns_a_record
  dns_domain   = each.value.dns_domain
  dns_servers  = each.value.dns_servers

}

