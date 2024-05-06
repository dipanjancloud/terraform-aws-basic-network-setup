resource "aws_vpc" "main" {
    cidr_block  =   "${var.cidr_block}"
    tags        =   merge(var.default_tags, tomap("Name", "vpc-${var.env_no}-${var.region}-${var.sr_no}"))
}

output "vpc_id" {
    value = "${aws_vpc.main.id}"
}

variable "default_tags" {
    type = map(string)
}
variable "cidr_block" {}
variable "env_no" {}
variable "region" {}
variable "sr_no" {}