## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.5 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | 2.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.45.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.droplet](https://registry.terraform.io/providers/digitalocean/digitalocean/2.45.0/docs/resources/droplet) | resource |
| [digitalocean_kubernetes_cluster.k8s](https://registry.terraform.io/providers/digitalocean/digitalocean/2.45.0/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_kubernetes_node_pool.k8sNodePool](https://registry.terraform.io/providers/digitalocean/digitalocean/2.45.0/docs/resources/kubernetes_node_pool) | resource |
| [digitalocean_ssh_key.sshKey](https://registry.terraform.io/providers/digitalocean/digitalocean/2.45.0/docs/resources/ssh_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | DigitalOcean token | `string` | n/a | yes |
| <a name="input_droplets"></a> [droplets](#input\_droplets) | n/a | <pre>map(object({<br/>    image           = string<br/>    region          = string<br/>    size            = string<br/>    public_key_name = string<br/>    monitoring      = bool<br/>    ipv6            = bool<br/>    resize_disk     = bool<br/>  }))</pre> | `{}` | no |
| <a name="input_k8s_clusters"></a> [k8s\_clusters](#input\_k8s\_clusters) | n/a | <pre>map(object({<br/>    region                 = string<br/>    version                = string<br/>    auto_upgrade           = bool<br/>    surge_upgrade          = bool<br/>    high_availability      = bool<br/>    maintenance_start_time = string<br/>    maintenance_day        = string<br/>    size                   = string<br/>    node_count             = number<br/>    auto_scale             = bool<br/>    min_nodes              = number<br/>    max_nodes              = number<br/>  }))</pre> | `{}` | no |
| <a name="input_k8s_clusters_node_pool"></a> [k8s\_clusters\_node\_pool](#input\_k8s\_clusters\_node\_pool) | n/a | <pre>map(object({<br/>    k8s_name   = string<br/>    size       = string<br/>    node_count = number<br/>    auto_scale = bool<br/>    min_nodes  = number<br/>    max_nodes  = number<br/>  }))</pre> | `{}` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | n/a | <pre>map(object({<br/>    public_key_path = string<br/>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_droplet_ipv4_addresses"></a> [droplet\_ipv4\_addresses](#output\_droplet\_ipv4\_addresses) | n/a |
| <a name="output_droplet_sizes"></a> [droplet\_sizes](#output\_droplet\_sizes) | n/a |
| <a name="output_k8s_endpoints"></a> [k8s\_endpoints](#output\_k8s\_endpoints) | n/a |
