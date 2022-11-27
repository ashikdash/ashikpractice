# Required variables
variable "gcp_project" {
  description = "ashik-dash-practice"
}

# Optional variables
variable "os_pd_ssd_size" {
  description = "10"
  default     = "10"
}

variable "gcp_region" {
  description = "us-central1"
  default     = "us-central1"
}

variable "machine_type" {
  description = "GCP machine type"
  default     = "n1-standard-1"
}

variable "instance_name" {
  description = "GCP instance name"
  default     = "myvmashik"
}

variable "image" {
  description = "image to build instance from in the format: image-family/os. See: https://cloud.google.com/compute/docs/images#os-compute-support"
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}


variable "labels" {
  type = map(string)
  default = {
    owner       = "demouser"
    environment = "demo"
    app         = "demo"
    ttl         = "24"
  }
}

variable "num_of_servers" {
  description = "Adjust the qty. of servers and associated OS disks created"
  default     = 1
}