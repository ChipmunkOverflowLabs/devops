terraform {
  required_version = ">= 1.8.0, < 1.9.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.25.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
}
