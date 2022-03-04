# Creating VPC
resource "aws_vpc" "vpc_capstone" {
  cidr_block       = "${var.vpc_cidr}"
  tags = {
    Name = "capstone_VPC"
  }
}