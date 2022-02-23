resource "google_compute_instance" "default" {
  name                      = "${var.teamid}-${var.prjid}"
  machine_type              = var.inst_type
  zone                      = var.set_zone
  allow_stopping_for_update = "true"
  tags                      = ["owner", "rumse"]

  boot_disk {
    initialize_params {
      image = var.image_id
    }
    auto_delete = "true"
    device_name = var.prjid
    mode        = "READ_WRITE"
  }

  # Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    /*
    access_config {
      // Ephemeral IP
    }
    */
  }

  metadata = {
    foo = "bar"
  }

  #metadata_startup_script               = "echo hi > /test.txt"
  metadata_startup_script = data.template_cloudinit_config.cloudinit_app.rendered

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
