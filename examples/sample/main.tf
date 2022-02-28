data "google_compute_regions" "available" {
}

provider "google" {
  region = data.google_compute_regions.available.names[count.index]
}

module "vm" {
  source = "../../"

  user_data_file_path = "user_data.sh"
  # --------------------------------------------------
  # Do not change the teamid, prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
