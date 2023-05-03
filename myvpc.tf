resource "aws_vpc" "my_vpc" {
cidr_block = "${var.vpc-cidr}"
instance_tenancy = "default"
tags = {
  Name = "My_Vpc"
}
}