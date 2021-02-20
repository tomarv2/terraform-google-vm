variable "email" {
  description = "email address to be used for tagging (suggestion: use group email address)"
}

variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "gcp_project" {
  description = "GCP project name to be used for deployment"
}

variable "image_id" {
  description = "image id to use"
  default = "debian-cloud/debian-10"
}

variable "credentials" {
  default =  "~/.gcloud/credentials.json"
}

variable "user_data_file_path" {
  description = "ec2 user data location"
  default = "scripts/userdata.sh"
}