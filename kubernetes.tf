resource "digitalocean_kubernetes_cluster" "k8s" {
  for_each = var.k8s_clusters

  name          = each.key
  region        = each.value.region
  version       = each.value.version
  auto_upgrade  = each.value.auto_upgrade
  surge_upgrade = each.value.surge_upgrade
  ha            = each.value.high_availability

  maintenance_policy {
    start_time = each.value.maintenance_start_time
    day        = each.value.maintenance_day
  }

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

resource "local_file" "kubeconfig" {
  for_each = data.digitalocean_kubernetes_cluster.k8s

  filename = "${path.module}/kubeconfigs/${each.key}-kubeconfig.yaml"
  content  = each.value.kube_config[0].raw_config

  depends_on = [
    digitalocean_kubernetes_cluster.k8s
  ]

  lifecycle {
    ignore_changes = [content]
  }
}

resource "digitalocean_kubernetes_node_pool" "k8sNodePool" {
  for_each = var.k8s_clusters_node_pool

  cluster_id = digitalocean_kubernetes_cluster.k8s[each.value.k8s_name].id
  name       = "${each.key}-pool"
  size       = each.value.size
  node_count = each.value.node_count
  auto_scale = each.value.auto_scale
  min_nodes  = each.value.min_nodes
  max_nodes  = each.value.max_nodes

  lifecycle {
    ignore_changes = [
      node_count
    ]
  }
}