variable "members" {
  description = "List of members in the standard GCP form: user:{email}, serviceAccount:{email}, group:{email}"
  type        = list(string)
  default     = ["user:admin@exce.online"]
}

variable "project_id" {
  description = "Project ID where the bastion will run"
  type        = string
  default     = "sound-observer-408806"
}
