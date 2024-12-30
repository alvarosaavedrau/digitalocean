output "droplet_ipv4_addresses" {
  value = {
    for k, v in digitalocean_droplet.droplet :
    k => v.ipv4_address
  }
}

output "droplet_sizes" {
  value = {
    for k, v in digitalocean_droplet.droplet :
    k => v.size
  }
}

output "k8s_endpoints" {
  value = {
    for k, v in digitalocean_kubernetes_cluster.k8s :
    k => v.endpoint
  }
}

output "databases_host" {
  value = {
    for k, v in digitalocean_database_cluster.databases :
    k => v.host
  }
}

output "databases_user" {
  value = {
    for k, v in digitalocean_database_cluster.databases :
    k => v.user
  }
}

output "databases_password" {
  value = {
    for k, v in digitalocean_database_cluster.databases :
    k => v.password
  }
  sensitive = true
}