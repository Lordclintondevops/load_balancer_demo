# Creating a VPC
resource "aws_vpc" "demovpc" {
    cidr_block = "112.124.0.0/16"
    instance_tenancy = var.instance_tenancy

    tags = {
      Name = "Demovpc"
    }
  
}