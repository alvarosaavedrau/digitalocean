# resource "digitalocean_droplet" "web" {
#   name   = "web-1"
#   image  = "ubuntu-24-04-x64"
#   size   = "s-1vcpu-1gb"
#   region = "fra1"
#   ssh_keys = [digitalocean_ssh_key.default.fingerprint]
# }

resource "digitalocean_ssh_key" "default" {
  name       = "Thinkpad ssh key"
  public_key = file("/home/aspu/.ssh/id_rsa.pub")
}