module "gcs_storage" {
  source        = "D:/gcp_Terraform/impersonate_sa/module"
  gcs_name      = "hbgff-58241"
  no_of_gcs     = 4
  force_destroy = true
  region        = "us-west1"


}

module "gcs_storage-2" {
  source        = "D:/gcp_Terraform/impersonate_sa/module"
  gcs_name      = "zeb-58241kj"
  no_of_gcs     = 2
  force_destroy = true
  #region        = "us-west1"


}

