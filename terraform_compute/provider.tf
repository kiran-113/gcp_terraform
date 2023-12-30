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
  project     = "sound-observer-408806"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "newkey.json"

}
