module "vm" {
  source      = "../../"

  teamid                  = var.teamid
  prjid                   = var.prjid
  email                   = var.email

  gcp_project             = var.gcp_project
  image_id                = var.image_id
  user_data_file_path     = var.user_data_file_path
}