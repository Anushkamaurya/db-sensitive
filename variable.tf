/* variable "gcp_credentials" {
    type = string
    default = ""
} */

variable "region" {
    type = string
    default = ""
}
variable "project" {
    type = string
 default = ""
}
variable "zone" {
    type = string
    default = ""
}

variable "vm_name" {
    type = string
    default = ""
}
variable "machine_type" {
    type = string
    default = ""
}

variable "image" {
    type = string
    default = ""
}

variable "network" {
    type = string
    default = ""
}
variable "subnetwork" {
    type = string
    default = ""
}
variable "ip_cidr_range" {
    type = string
    default = ""
}
variable "firewall" {
    type = string
    default = ""
}
variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
  type        = string
} 

variable "project_services" {
  description = "A list of Google APIs to activate on this project"
  default     = []
  type        = list(string)
}
variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed"
  default     = true
  type        = bool
} 

variable "disable_dependent_services" {
  description = "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed."
  default     = true
  type        = bool
} 
variable "project_name" {
  description = "The name for the project"
  type        = string
}

variable "bucket_name" {
  description = "A name for a GCS bucket for testing"
  type        = string
  default     = ""
}

variable "bucket_location" {
  description = "The location for a GCS bucket to create"
  type        = string
  default     = ""
}

variable "bucket_force_destroy" {
  description = "Force the deletion of all objects within the GCS bucket when deleting the bucket"
  type        = bool
  default     = false
}