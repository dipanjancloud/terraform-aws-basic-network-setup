resource "aws_route_table" "example" {
    vpc_id = "${var.vpc_id}"
    tags        =   "${merge(var.default_tags, map("Name", "rtb-${var.env_no}-${var.region}-${var.sr_no}"))}"
}

variable "default_tags" {
    type = map(string)
}
variable "vpc_id" {}
variable "env_no" {}
variable "region" {}
variable "sr_no" {}