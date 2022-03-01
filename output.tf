output "vm_name" {
  description = "GCP Instance Name"
  value       = google_compute_instance.default.name
}

output "vm_id" {
  description = "GCP Instance Id"
  value       = google_compute_instance.default.id
}

output "vm_service_account" {
  description = "GCP Service Account"
  value       = google_compute_instance.default.service_account
}
