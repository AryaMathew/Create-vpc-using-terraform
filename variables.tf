variable "region" {

  description = "Amazon Default Region"
  default = "us-east-2"
}

variable "project" {
  default = "zomato"
}

variable "vpc_cidr" {
  default = "172.17.0.0/16"
}
