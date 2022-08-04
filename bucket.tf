resource "google_storage_bucket" "test_bucket" {
  name                        = var.bucket_name
  project                     = var.project
  location                    = var.bucket_location
  force_destroy               = var.bucket_force_destroy
  uniform_bucket_level_access = true
}

resource "google_project_service" "project_services" {
  count                      = length(var.project_services)
  project                    = var.project
  service                    = var.project_services[count.index]
  disable_on_destroy         = var.disable_services_on_destroy
  disable_dependent_services = var.disable_dependent_services
} 