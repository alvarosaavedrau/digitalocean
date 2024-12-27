resource "digitalocean_droplet" "droplet" {
  for_each = var.droplets

  name   = each.key
  image  = each.value.image
  region = each.value.region
  size   = each.value.size // curl -X GET -H "Content-Type: application/json"-H "Authorization: Bearer $DIGITALOCEAN_TOKEN""https://api.digitalocean.com/v2/sizes"
  # user_data  = file("droplet/cloud-init-data.yaml")
  ssh_keys    = [digitalocean_ssh_key.sshKey[each.value.public_key_name].fingerprint]
  monitoring  = each.value.monitoring
  ipv6        = each.value.ipv6
  resize_disk = each.value.resize_disk
}

resource "digitalocean_ssh_key" "sshKey" {
  for_each = var.ssh_keys

  name       = each.key
  public_key = file("${each.value.public_key_path}")
}