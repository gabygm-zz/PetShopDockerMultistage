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
  image = "production:latest"
  name  = "production"
  ports {
      internal = 3000
      external = 4000
  }
}
