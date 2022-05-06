resource "aws_subnet" "subnet-public-subnet01" {

    vpc_id                  = "${aws_vpc.vpc-001.id}"
    cidr_block              = "10.0.1.0/24"
    //cidr_block              =each.value.public_cidr
    availability_zone       = "us-west-2a"

    tags = {
      name = "subnet-public-subnet01"
    }
}


resource "aws_subnet" "subnet-private-subnet01" {
    vpc_id                  = aws_vpc.vpc-001.id
    cidr_block              = "10.0.2.0/24"
    availability_zone       = "us-west-2a"

    tags = {
      name = "subnet-private-subnet01"
    }
}

resource "aws_subnet" "subnet-private-subnet02" {
    vpc_id                  = aws_vpc.vpc-001.id
    cidr_block              = "10.0.3.0/24"
    availability_zone       = "us-west-2c"

    tags = {
      name = "subnet-private-subnet02"
    }
}
