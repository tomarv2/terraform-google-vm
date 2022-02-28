variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "inst_type" {
  default     = "n1-standard-1"
  description = "The GCP instance type"
  type        = string
}

variable "image_id" {
  description = "image id to use"
  default     = "debian-cloud/debian-10"
  type        = string
}

variable "user_data_file_path" {
  description = "Virtual machine user data location"
  default     = "scripts/userdata.sh"
  type        = string
}
