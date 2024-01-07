terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.10.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "keep your project_id"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "#keep your credentials"

}
