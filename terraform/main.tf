terraform {
  backend "gcs" {
    bucket = "adopt-a-book-terraform-state"
    prefix = "terraform/edge"
  }
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}
provider "google" {
  project = var.project
  region  = var.region
}

provider "google-beta" {
  project = var.project
  region  = var.region
}

# Getting the project number for assigning permissions
data "google_project" "project" {}

data "google_client_config" "default" {
}


resource "google_project_service" "enable_api" {
  for_each = toset([
    "logging.googleapis.com",
    "artifactregistry.googleapis.com",
    "run.googleapis.com",
    "iamcredentials.googleapis.com",
  ])

  service = each.key # value and key are the same for a set

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}
