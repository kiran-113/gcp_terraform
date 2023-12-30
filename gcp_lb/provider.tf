provider "google" {
  project = var.project_id
  region  = var.region
}

## Transitive provider to get Service Account Token
provider "google" {
  alias   = "impersonation"
  project = var.project_id
  region  = var.region
  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/userinfo.email",
  ]
}

data "google_service_account_access_token" "iam" {
  provider               = google.impersonation # References the impersonation provider to retrieve service account token
  target_service_account = var.service_account
  scopes                 = ["userinfo-email", "cloud-platform"]
  lifetime               = "600s"
}

## Provider for IAM management
provider "google" {
  alias        = "iam"
  project      = var.project_id
  region       = var.region
  access_token = data.google_service_account_access_token.iam.access_token
}

