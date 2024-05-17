variable "region" {
    type = string
    default = "us-east-1"
  
}

variable "ami" {
    type = string
    default = "ami-04b70fa74e45c3917"
  
}

variable "type" {
    type = string
    default = "t2.micro"
  
}

variable "key_name" {
    type = string
    default = "clintontest"
  
}

variable "nt_count" {
    type = string
    default = "4"
  
}

variable "instance_tenancy" {
    type = string
    default = "default"
  
}

variable "bucket" {
    type = string
    default = "demos_my_325"
  
}