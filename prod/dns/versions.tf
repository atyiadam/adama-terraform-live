terraform {
  required_version = "~> 1.9.6"

  required_providers {
    powerdns = {
      source = "pan-net/powerdns"
      version = "~> 1.5.0"
    }
  }
}

