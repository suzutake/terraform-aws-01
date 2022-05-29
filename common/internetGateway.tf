resource "aws_internet_gateway" "igw-001" {
    vpc_id = "${aws_vpc.vpc-001.id}"

    tags = {
      name = "igw-001"
    }
}
