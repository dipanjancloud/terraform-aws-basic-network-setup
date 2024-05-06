variable "aws_region"  {
    description = "This represents region name"
    type        = string
    default     = "us-east-1"
}

variable "default_tags" {
    description = "These are default tags"
    type        = map
    default     =  {
        Environment     = "NP"
        CreatedBy       = "Dipanjan"
        Region          = "US-East-1"
    }

}

variable "env_no"  {
    description = "This represents environment name"
    type        = string
    default     = "np"
}
variable "region"  {
    description = "This represents region name"
    type        = string
    default     = "usea1"
}
variable "vpc_cidr_block"  {
    description = "This represents vpc cidr block"
    type        = string
    default     = "10.0.100.0/22"
}
variable "private_subnet_cidr_block_1"  {
    description = "This represents private subnet 1 cidr block"
    type        = string
    default     = "10.0.100.0/24"
}
variable "private_subnet_cidr_block_2"  {
    description = "This represents private subnet 2 cidr block"
    type        = string
    default     = "10.0.101.0/24"
}
variable "public_subnet_cidr_block_1"  {
    description = "This represents public subnet 1 cidr block"
    type        = string
    default     = "10.0.102.0/24"
}
variable "public_subnet_cidr_block_2"  {
    description = "This represents public subnet 2 cidr block"
    type        = string
    default     = "10.0.103.0/24"
}