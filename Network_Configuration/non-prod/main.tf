terraform {
    backend "s3" {
        bucket         = "dipanjan-s3-terraform-backend-codepipeline"
        key            = "terraform.tfstate"
        region         = "us-east-1"
    }
}

provider "aws" {
    region = var.aws_region
}

module "vpc"{
    source               	= "../../Modules/vpc"
    default_tags         	= "${var.default_tags}"
    cidr_block 		   		= "${var.vpc_cidr_block}"
    env_no			   	    = "${var.env_no}"
    region                  = "${var.region}"
    sr_no        			= "01"
}

module "private_subnet1"{
    source               	= "../../Modules/subnet"
    #default_tags         	= "${var.default_tags}"
    vpc_id 		   		    = "${module.vpc.vpc_id}"
    cidr_block              = "${var.private_subnet_cidr_block_1}"
    env_no			   	    = "${var.env_no}"
    region                  = "${var.region}"
    subnet_type             = "private"
    sr_no        			= "01"
}

module "private_subnet2"{
    source               	= "../../Modules/subnet"
    #default_tags         	= "${var.default_tags}"
    vpc_id 		   		    = "${module.vpc.vpc_id}"
    cidr_block              = "${var.private_subnet_cidr_block_2}"
    env_no			   	    = "${var.env_no}"
    region                  = "${var.region}"
    subnet_type             = "private"
    sr_no        			= "02"
}

module "public_subnet1"{
    source               	= "../../Modules/subnet"
    #default_tags         	= "${var.default_tags}"
    vpc_id 		   		    = "${module.vpc.vpc_id}"
    cidr_block              = "${var.public_subnet_cidr_block_1}"
    env_no			   	    = "${var.env_no}"
    region                  = "${var.region}"
    subnet_type             = "public"
    sr_no        			= "01"
}

module "public_subnet2"{
    source               	= "../../Modules/subnet"
    #default_tags         	= "${var.default_tags}"
    vpc_id 		   		    = "${module.vpc.vpc_id}"
    cidr_block              = "${var.public_subnet_cidr_block_2}"
    env_no			   	    = "${var.env_no}"
    region                  = "${var.region}"
    subnet_type             = "public"
    sr_no        			= "02"
}

module "igw"{
    source               	= "../../Modules/internet_gateway"
    #default_tags         	= "${var.default_tags}"
    vpc_id 		   		    = "${module.vpc.vpc_id}"
    env_no			   	    = "${var.env_no}"
    region                  = "${var.region}"
    sr_no        			= "01"
}

module "rtb"{
    source               	= "../../Modules/route_table"
    #default_tags         	= "${var.default_tags}"
    vpc_id 		   		    = "${module.vpc.vpc_id}"
    env_no			   	    = "${var.env_no}"
    region                  = "${var.region}"
    sr_no        			= "01"
}