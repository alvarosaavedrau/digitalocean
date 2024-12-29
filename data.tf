data "digitalocean_kubernetes_cluster" "k8s" {
  for_each = digitalocean_kubernetes_cluster.k8s
  name     = each.value.name
}