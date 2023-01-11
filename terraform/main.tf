terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "docker" {
  image  = "ubuntu-22-04-x64"
  name   = "docker-1"
  region = "fra1"
  size   = "s-2vcpu-4gb"
  ssh_keys = [ "37027018" ]
}