resource "digitalocean_project" "playground" {
  name        = "CV"
  description = "Project to play with DigitalOcean infrastructure"
  purpose     = "Web Application"
  environment = "Development"
}