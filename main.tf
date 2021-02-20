provider "google" {
  project           = var.gcp_project
  credentials       = var.credentials
  region            = var.set_region
  zone              = var.set_zone
}
//
//terraform {
//  required_version  = ">= 0.14"
//}