terraform {
  required_version = ">= 1.9.0, < 1.10.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.50.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
}
