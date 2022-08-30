
provider "aws" {
    region = "us-east-1"
    access_key = "----"
    secret_key = "----"
    }

resource "aws_iam_user" "lb" {
    name = var.user_number
    path = "/system/"
  
}
