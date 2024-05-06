resource "aws_subnet" "main" {
    vpc_id      =   "${var.vpc_id}"
    cidr_block  =   "${var.cidr_block}"
    tags        =   "${merge(var.default_tags, map("Name", "subnet-${var.env_no}-${var.region}-${var.subnet_type}-${var.sr_no}"))}"
}

variable "default_tags" {
    type = "map"
}
variable "vpc_id" {}
variable "cidr_block" {}
variable "env_no" {}
variable "region" {}
variable "subnet_type" {}
variable "sr_no" {}