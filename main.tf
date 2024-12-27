terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.45.0"
    }
  }
  backend "s3" {
    bucket = "alvarosaavedra-tfstate"
    key    = "terraform/digitalocean/terraform.tfstate"
    region = "us-east-1"
  }
  required_version = ">= 1.9.5"
}

provider "digitalocean" {
  token = var.do_token
}