resource "aws_eip" "eip" {
  instance = "${aws_instance.web-server01.id}"
  vpc      = true
}
