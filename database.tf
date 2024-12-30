resource "digitalocean_database_cluster" "databases" {
  for_each = var.databases

  name             = each.key
  engine           = each.value.engine
  version          = each.value.version
  size             = each.value.size //"db-s-1vcpu-1gb"
  region           = each.value.region
  node_count       = each.value.node_count
  storage_size_mib = each.value.engine == "pg" || each.value.engine == "mysql" ? each.value.storage_size_mib : null

  maintenance_window {
    day  = each.value.maintenance_day
    hour = each.value.maintenance_hour
  }
}