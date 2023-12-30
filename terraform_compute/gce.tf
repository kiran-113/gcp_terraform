resource "google_storage_bucket" "static-site" {
  name          = "image-store-com-ju5241"
  location      = "us-central1"
  force_destroy = true

}

# data "google_storage_bucket" "my-bucket" {
#   name = "console-nbucket-41521"
# }


resource "google_service_account" "default" {
  project      = "sound-observer-408806"
  account_id   = "my-custom-sa-ks"
  display_name = "Custom SA for VM Instance"
}

resource "google_compute_instance" "default" {
  name         = "my-instance-25745"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}
