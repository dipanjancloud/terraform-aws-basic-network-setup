resource "aws_internet_gateway" "gw" {
    vpc_id      =   "${var.vpc_id}"
    tags        =   "${merge(var.default_tags, map("Name", "igw-${var.env_no}-${var.region}-${var.sr_no}"))}"
}


resource "aws_internet_gateway_attachment" "gw_attach" {
    internet_gateway_id = aws_internet_gateway.gw.id
    vpc_id              = "${var.vpc_id}"
}

variable "default_tags" {
    type = "map(string)"
}
variable "vpc_id" {}
variable "env_no" {}
variable "region" {}
variable "sr_no" {}