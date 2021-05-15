resource "aws_vpc" "vpc" {
  cidr_block         = "${var.vpc_cidr}"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"  

  tags = {
    Name = "${var.project}-${local.ws_name}"
    env  = "${local.ws_name}"
  }
}

resource "aws_subnet" "public_igw" {
  count                   = "${length(data.aws_availability_zones.available.names)}"
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${cidrsubnet("${var.vpc_cidr}", "${var.subnet_escale}", count.index+1)}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${data.aws_availability_zones.available.names[count.index]}"

  tags = {
    Name = "${var.project}_${local.ws_name}_public_igw_${data.aws_availability_zones.available.names[count.index]}"
    Tier = "Public"
    env  = "${local.ws_name}"
  }
}
