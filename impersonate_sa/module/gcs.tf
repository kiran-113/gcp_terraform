resource "google_storage_bucket" "static-site" {
  count = var.no_of_gcs
  name  = "${var.gcs_name}-${count.index + 1}" #count.index + 1
  # for_each      = toset(var.gcs_names)
  # name          = each.value
  location      = var.region
  force_destroy = var.force_destroy

}

