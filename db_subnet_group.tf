resource "aws_db_subnet_group" "example" {
  name = "example"

  subnet_ids = [
    for s in aws_subnet.private : s.id
  ]

  tags = {
    Name = aws_vpc.this.tags.Name
  }
}
