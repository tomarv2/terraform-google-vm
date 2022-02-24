provider "google" {
  project = var.project
}

module "vm" {
  source = "../../"

  user_data_file_path = "user_data.sh"
  # --------------------------------------------------
  # Do not change the teamid, prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
