locals {
  ws_name = terraform.workspace
}

variable "project" {
  default = "fiap-lab"
}

variable "aws_region" {}

provider "aws" {
  region = var.aws_region
}



data "aws_vpc" "vpc" {
    tags = {
        Name = "${var.project}-${local.ws_name}"
    }
}

data "aws_internet_gateway" "igw" {
  filter {
    name = "attachment.vpc-id"
    values = ["${data.aws_vpc.vpc.id}"]
  }
}
data "aws_subnet_ids" "vpc" {
  vpc_id = "${data.aws_vpc.vpc.id}"
}

variable "env" {
  default = "prod"
}

output "vpc_id" {
    value = "${data.aws_vpc.vpc.id}"
}

variable "AWS_REGION" {
  default = "us-east-1"
}