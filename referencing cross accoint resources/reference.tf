terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.30.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = "----"
    secret_key = "----"
    }

/*

resource "aws_instance" "my_ec2" {
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
  
}

resource "aws_eip" "lb" {
    vpc = true
  
}
*/

/*
We will attach EIP with ec2 instance
*/

/*
resource "aws_eip_association" "eip_association" {
    instance_id = aws_instance.my_ec2.id
    allocation_id = aws_eip.lb.id
  
}

resource "aws_security_group" "allow_tls" {
  name        = "terraform-SG"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
    }

}
*/

resource "aws_security_group" "variable_demo" {
  name        = "terraform-SG"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
    }

    ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
    }

    ingress {
    description      = "TLS from VPC"
    from_port        = 53
    to_port          = 53
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
    }
}

