resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = {
    Name = "igw-${var.project}-${local.ws_name}"
    env  = "${local.ws_name}"
  }
}
