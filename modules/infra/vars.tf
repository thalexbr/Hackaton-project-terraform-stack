data "aws_availability_zones" "available" {}


variable "vpc_cidr" {
  default = "9.1.0.0/16"
}
variable "subnet_escale" {
  default = 6
}

variable "env" {
  default = "${local.ws_name}"
}

variable "AWS_REGION" {
  default = "us-east-1"
}