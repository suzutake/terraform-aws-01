terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "access_key" {}
variable "secret_key" {}
variable "region" {}

resource "aws_key_pair" "sample" {
  key_name   = "sample"
  public_key = file("./sample.pub")
}
