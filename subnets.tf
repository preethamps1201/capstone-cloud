# Creating 1st web subnet 
resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = "${aws_vpc.vpc_capstone.id}"
  cidr_block             = "${var.subnet_pub_1}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
tags = {
    Name = "public_subnet_1"
  }
}
# Creating 2nd web subnet 
resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = "${aws_vpc.vpc_capstone.id}"
  cidr_block             = "${var.subnet_pub_2}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
tags = {
    Name = "public_subnet_2"
  }
}
# Creating 1st application subnet 
resource "aws_subnet" "application-subnet-1" {
  vpc_id                  = "${aws_vpc.vpc_capstone.id}"
  cidr_block             = "${var.subnet_app_1}"
  availability_zone = "us-east-1a"
tags = {
    Name = "app_subnet_1"
  }
}
# Creating 2nd application subnet 
resource "aws_subnet" "application-subnet-2" {
  vpc_id                  = "${aws_vpc.vpc_capstone.id}"
  cidr_block             = "${var.subnet_app_2}"
  availability_zone = "us-east-1b"
tags = {
    Name = "app_subnet_2"
  }
}
# Create Database Private Subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id            = "${aws_vpc.vpc_capstone.id}"
  cidr_block        = "${var.subnet_db_1}"
  availability_zone = "us-east-1a"
tags = {
    Name = "db_subnet_1"
  }
}
# Create Database Private Subnet
resource "aws_subnet" "database-subnet-2" {
  vpc_id            = "${aws_vpc.vpc_capstone.id}"
  cidr_block        = "${var.subnet_db_2}"
  availability_zone = "us-east-1b"
tags = {
    Name = "db_subnet_2"
  }
}