terraform {
  required_version = "~> 1.9.6"

  backend "s3" {
    bucket = "terraform-state-dev"
    key    = "proxmox/vms/terraform.tfstate"
    region                      = "auto"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
    endpoints = { s3 = "https://8f919998eda50ad976a5c8a3e19cee69.r2.cloudflarestorage.com" }
  }

  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.66.1"
    }

    powerdns = {
      source  = "pan-net/powerdns"
      version = "~> 1.5.0"
    }

    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}
