resource "digitalocean_kubernetes_cluster" "k8s" {
  for_each = var.k8s_clusters

  name          = each.key
  region        = each.value.region
  version       = each.value.version
  auto_upgrade  = each.value.auto_upgrade
  surge_upgrade = each.value.surge_upgrade
  ha            = each.value.high_availability

  node_pool {
    name       = "${each.key}-pool"
    size       = each.value.size
    node_count = each.value.node_count
    auto_scale = each.value.auto_scale
    min_nodes  = each.value.min_nodes
    max_nodes  = each.value.max_nodes
  }

  lifecycle {
    ignore_changes = [
      node_pool
    ]
  }
}