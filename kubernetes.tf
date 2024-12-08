resource "digitalocean_kubernetes_cluster" "k8s" {
  name          = "kubernetes-cluster-fra1"
  region        = "fra1"
  version       = "1.31.1-do.4"
  auto_upgrade  = true
  surge_upgrade = true
  ha            = false

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 1
    auto_scale = true
    min_nodes  = 2
    max_nodes  = 2
  }
}
