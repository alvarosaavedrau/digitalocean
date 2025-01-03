variable "k8s_clusters" {
  type = map(object({
    region                 = string
    version                = string
    auto_upgrade           = bool
    surge_upgrade          = bool
    high_availability      = bool
    maintenance_start_time = string
    maintenance_day        = string
    size                   = string
    node_count             = number
    auto_scale             = bool
    min_nodes              = number
    max_nodes              = number
  }))
  default = {}
}

variable "k8s_clusters_node_pool" {
  type = map(object({
    k8s_name   = string
    size       = string
    node_count = number
    auto_scale = bool
    min_nodes  = number
    max_nodes  = number
  }))
  default = {}
}

variable "droplets" {
  type = map(object({
    image           = string
    region          = string
    size            = string
    public_key_name = string
    monitoring      = bool
    ipv6            = bool
    resize_disk     = bool
  }))
  default = {}
}

variable "ssh_keys" {
  type = map(object({
    public_key_path = string
  }))
  default = {}
}

variable "databases" {
  type = map(object({
    engine           = string
    version          = string
    size             = string
    region           = string
    node_count       = number
    maintenance_day  = string
    maintenance_hour = string
    storage_size_mib = number
  }))
  default = {}
}

variable "kubeconfig_path" {
  type = string
}