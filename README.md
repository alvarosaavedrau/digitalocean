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
| [digitalocean_droplet_snapshot.snapshot](https://registry.terraform.io/providers/digitalocean/digitalocean/2.45.0/docs/resources/droplet_snapshot) | resource |
| [digitalocean_kubernetes_cluster.k8s](https://registry.terraform.io/providers/digitalocean/digitalocean/2.45.0/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_ssh_key.sshKey](https://registry.terraform.io/providers/digitalocean/digitalocean/2.45.0/docs/resources/ssh_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | DigitalOcean token | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_droplets"></a> [droplets](#output\_droplets) | n/a |
