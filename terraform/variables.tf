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

variable "tag" {
  description = "The tag for the Docker image"
  default     = "latest"
  type        = string

}

variable "port" {
  description = "The port for the service"
  default     = 8080
  type        = number
}