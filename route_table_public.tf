# Creating Route Table
resource "aws_route_table" "public_rt_tble" {
    vpc_id = "${aws_vpc.vpc_capstone.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.capstone_gateway.id}"
    }
    tags = {
        Name = "public_route_table"
    }
}
# Associating Route Table
resource "aws_route_table_association" "pub_rt1" {
    subnet_id = "${aws_subnet.public-subnet-1.id}"
    route_table_id = "${aws_route_table.public_rt_tble.id}"
}
# Associating Route Table
resource "aws_route_table_association" "pub_rt2" {
    subnet_id = "${aws_subnet.public-subnet-2.id}"
    route_table_id = "${aws_route_table.public_rt_tble.id}"
}


resource "aws_route_table" "private_rt_tble" {
    vpc_id = "${aws_vpc.vpc_capstone.id}"
    tags = {
        Name = "private_route_table"
    }
}

resource "aws_route_table_association" "priv_rt1" {
    subnet_id = "${aws_subnet.application-subnet-1.id}"
    route_table_id = "${aws_route_table.private_rt_tble.id}"
}

resource "aws_route_table_association" "priv_rt2" {
    subnet_id = "${aws_subnet.application-subnet-2.id}"
    route_table_id = "${aws_route_table.private_rt_tble.id}"
}

resource "aws_route_table_association" "priv_rt3" {
    subnet_id = "${aws_subnet.database-subnet-1.id}"
    route_table_id = "${aws_route_table.private_rt_tble.id}"
}

resource "aws_route_table_association" "priv_rt4" {
    subnet_id = "${aws_subnet.database-subnet-2.id}"
    route_table_id = "${aws_route_table.private_rt_tble.id}"
}
