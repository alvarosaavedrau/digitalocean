resource "digitalocean_droplet" "droplet" {
  image      = "ubuntu-24-04-x64"
  name       = "droplet-1"
  region     = "fra1"
  size       = "s-1vcpu-512mb-10gb"
  user_data  = file("cloud-init-data.yaml")
  ssh_keys   = [digitalocean_ssh_key.sshKey.fingerprint]
  monitoring = false
}

resource "digitalocean_ssh_key" "sshKey" {
  name       = "Thinkpad ssh key"
  public_key = file("./digitalocean.pub")
}