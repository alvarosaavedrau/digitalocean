variable "do_token" {
  type        = string
  description = "DigitalOcean token"
}

variable "k8s_clusters" {
  type = map(object({
    region            = string
    version           = string
    auto_upgrade      = bool
    surge_upgrade     = bool
    high_availability = bool
    size              = string
    node_count        = number
    auto_scale        = bool
    min_nodes         = number
    max_nodes         = number
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