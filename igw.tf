# Creating Internet Gateway 
resource "aws_internet_gateway" "capstone_gateway" {
  vpc_id = "${aws_vpc.vpc_capstone.id}"
}