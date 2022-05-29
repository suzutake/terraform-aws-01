resource "aws_db_subnet_group" "example" {
  name = "example"

  subnet_ids = [
    "${aws_subnet.subnet-private-subnet01.id}","${aws_subnet.subnet-private-subnet02.id}"
  ]

  tags = {
    Name = "${aws_vpc.vpc-001.id}"
  }
}
