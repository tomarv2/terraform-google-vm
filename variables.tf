variable "email" {
  description = "email address to be used for tagging (suggestion: use group email address)"
}

variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "inst_type" {
  default = "n1-standard-1"
  description = "The GCP instance type"
}

variable "set_zone" {
  default = "us-west1-a"
  description = "set zone"
}

variable "image_id" {
  description = "image id to use"
  default = "debian-cloud/debian-10"
}

variable "set_region" {
  default = "us-west1"
}

variable "gcp_project" {
  description = "gcp project to use"
}

variable "credentials" {
  default =  "~/.gcloud/credentials.json"
}

variable "user_data_file_path" {
  description = "ec2 user data location"
  default = "scripts/userdata.sh"
}