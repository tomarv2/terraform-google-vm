output "vm_name" {
  description = "GCP vm name"
  value = google_compute_instance.default.name
}

output "vm_id" {
  description = "GCP vm name"
  value = google_compute_instance.default.id
}

output "vm_service_account" {
  description = "GCP Service account"
  value = google_compute_instance.default.service_account
}
