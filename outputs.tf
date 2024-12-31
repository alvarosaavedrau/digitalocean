output "droplet_ipv4_addresses" {
  value = {
    for k, v in digitalocean_droplet.droplet :
    k => v.ipv4_address
  }
  description = "Droplet IPv4 addresses"
}

output "droplet_sizes" {
  value = {
    for k, v in digitalocean_droplet.droplet :
    k => v.size
  }
  description = "Droplet sizes"
}

output "k8s_endpoints" {
  value = {
    for k, v in digitalocean_kubernetes_cluster.k8s :
    k => v.endpoint
  }
  description = "Kubernetes cluster endpoints"
}

output "databases_host" {
  value = {
    for k, v in digitalocean_database_cluster.databases :
    k => v.host
  }
  description = "Databases host addresses"
}

output "databases_user" {
  value = {
    for k, v in digitalocean_database_cluster.databases :
    k => v.user
  }
  sensitive = true
  description = "Databases user"
}

output "databases_password" {
  value = {
    for k, v in digitalocean_database_cluster.databases :
    k => v.password
  }
  sensitive = true
  description = "Databases password"
}