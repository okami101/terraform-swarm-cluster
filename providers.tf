terraform {
  required_providers {
    docker = {
      source  = "registry.opentofu.org/kreuzwerker/docker"
      version = ">= 3.8.0"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "docker" {
  host = var.docker_host
}
