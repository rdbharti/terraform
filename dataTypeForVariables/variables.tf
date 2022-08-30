variable "user_number" {
    type = number
  
}

variable "elb_name" {
    type = string

  
}

variable "az" {
    type = list
  # ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "time_out" {
    type = number
  
}