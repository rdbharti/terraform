provider "aws" {
    region = "us-east-1"
    access_key = "----"
    secret_key = "----"
}

resource "aws_instance" "my_ec2" {
    ami = "ami-05fa00d4c63e32376"
    instance_type = var.instance_type
}