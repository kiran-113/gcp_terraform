variable "project_id" {
  default = "sound-observer-408806"

}

variable "region" {
  default = "us-central1"

}

variable "no_of_gcs" {
  default = ""
}

variable "force_destroy" {
  default = "false"
}

variable "gcs_name" {
  description = "The name of the bucket."
  type        = string
}


variable "service_account" {
  default = "new-sa-terraform@sound-observer-408806.iam.gserviceaccount.com"

}

variable "gcs_names" {
  default = ["one-4251478", "two-5257845", "three-952145"]
}


