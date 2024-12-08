resource "digitalocean_droplet" "droplet" {
  image  = "debian-12-x64"
  name   = "debian-12-x64"
  region = "fra1"
  size   = "s-1vcpu-512mb-10gb" // curl -X GET -H "Content-Type: application/json"-H "Authorization: Bearer $DIGITALOCEAN_TOKEN""https://api.digitalocean.com/v2/sizes"
  # user_data  = file("cloud-init-data.yaml")
  ssh_keys   = [digitalocean_ssh_key.sshKey.fingerprint]
  monitoring = false
}

resource "digitalocean_ssh_key" "sshKey" {
  name       = "Thinkpad ssh key"
  public_key = file("~/.ssh/digitalocean.pub")
}

resource "digitalocean_droplet_snapshot" "snapshot" {
  droplet_id = digitalocean_droplet.droplet.id
  name       = "debian-12"
}