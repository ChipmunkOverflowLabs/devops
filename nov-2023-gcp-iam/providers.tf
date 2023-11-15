terraform {
  required_version = ">= 1.6.0, < 1.7.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.5.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
}
