resource "aws_vpc" "vpc-001" {
    cidr_block           = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true
    instance_tenancy     = "default"

    tags = {
      name = "vpc-001"
    }
}

resource "aws_route_table" "route" {
  vpc_id = "${aws_vpc.vpc-001.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw-001.id}"
  }
}

resource "aws_route_table_association" "ass"{
  subnet_id ="${aws_subnet.subnet-public-subnet01.id}"
  route_table_id = "${aws_route_table.route.id}"
}
