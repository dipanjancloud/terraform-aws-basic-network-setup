resource "aws_subnet" "main" {
    vpc_id      =   "${var.vpc_id}"
    cidr_block  =   "${var.cidr_block}"
    tags        =   "${merge(tomap({"Name" = "subnet-${var.env_no}-${var.region}-${var.subnet_type}-${var.sr_no}"}), var.default_tags)}"
}

variable "default_tags" {
    type = map(string)
}

variable "vpc_id" {}
variable "cidr_block" {}
variable "env_no" {}
variable "region" {}
variable "subnet_type" {}
variable "sr_no" {}