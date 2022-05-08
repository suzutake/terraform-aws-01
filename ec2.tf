resource "aws_instance" "web-server01" {
    ami                         = "${data.aws_ami.rhel7_5.id}"
    availability_zone           = "us-west-2a"
    ebs_optimized               = true
    instance_type               = "t2.micro"

    //key_name                    = "${aws_key_pair.sample.id}"
    key_name                    = "key-0a3c996dc8b6afc17"

    //subnet_id                   = "${aws_subnet.subnet-public-subnet01.id}"
    subnet_id                   = "subnet-d0cb1aa8"

    //vpc_security_group_ids      = ["${aws_security_group.web-sg.id}"]
    vpc_security_group_ids      = ["sg-07dfa67c8b832b0d8"]

    associate_public_ip_address = true
    //private_ip                  = "10.0.1.10"
    source_dest_check           = true

    tags = {
        "Name" = "web-server01"
    }
}
