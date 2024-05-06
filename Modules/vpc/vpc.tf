resource "aws_vpc" "main" {
    cidr_block  =   "${var.cidr_block}"
    tags        =   "${merge(tomap("Name", "vpc-${var.env_no}-${var.region}-${var.sr_no}"), var.default_tags)}"
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