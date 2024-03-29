data "template_file" "shell_script" {
  template = file(var.user_data_file_path)
}

# ----------------------------------------------------
data "template_cloudinit_config" "cloudinit_app" {

  gzip          = false
  base64_encode = false

  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.shell_script.rendered
  }

}
