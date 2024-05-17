# Creating an Internet Gateway and attaching our VPC to it
resource "aws_internet_gateway" "demoigw" {
    vpc_id = aws_vpc.demovpc.id
  
}