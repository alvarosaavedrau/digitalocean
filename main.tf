terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.45.0"
    }
  }
  required_version = ">= 1.9.5"
}

provider "digitalocean" {
  token = var.do_token
}