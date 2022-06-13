variable "aws_region" {
  default = "us-west-2"
}

variable "cluster_name" {
  default = "N/A"
  type    = string
}

variable "application_owner" {
  default = "N/A"
  type    = string
}

variable "environment" {
  default = "nonprod"
  type    = string
}

variable "application" {
  default = "N/A"
  type    = string
}
variable "costcenter" {
  default = "N/A"
  type    = string
}