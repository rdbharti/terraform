provider "aws" {
    region = "us-east-1"
    access_key = "----"
    secret_key = "----"
    }

resource "aws_instance" "TeInstance" {
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"  
}

