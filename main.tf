terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  // issue #1
  // manage tfstate on S3 (not local env)
  backend "s3"{
    bucket = "S3-terraform-state"
    region = "us-west-2"
    key = "terraform.tfstate"
    encrypt = true
  }
}

variable "access_key" {}
variable "secret_key" {}
variable "region" {}

resource "aws_key_pair" "sample" {
  key_name   = "sample"
  public_key = file("./sample.pub")
}
