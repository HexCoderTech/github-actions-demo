variable "project" {
  description = "The GCP project id"
  default     = "adopt-a-book"
  type        = string
}

variable "region" {
  description = "The GCP region for this project"
  default     = "europe-west4"
  type        = string
}
