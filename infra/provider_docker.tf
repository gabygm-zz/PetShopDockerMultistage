terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

# Configure the Docker provider
provider "docker" {
  host = "http://192.168.64.3:2375"
}

# Create a container
resource "docker_container" "petshop" {
  image = docker_image.pet.latest
  name  = "production"
  ports {
      internal = 3000
      external = 4000
  }
}

resource "docker_image" "pet" {
  name = "gabygm/node-docker-eb:latest"
}
