resource "aws_route_table" "example" {
    vpc_id = "${var.vpc_id}"
    tags        =   "${merge(tomap({"Name" = "rtb-${var.env_no}-${var.region}-${var.sr_no}"}), var.default_tags)}"
}

variable "default_tags" {
    type = map(string)
}

variable "vpc_id" {}
variable "env_no" {}
variable "region" {}
variable "sr_no" {}