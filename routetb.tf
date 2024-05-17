# Creating a route table
resource "aws_route_table" "demort" {
    vpc_id = aws_vpc.demovpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.demoigw.id
    }

}

# Associating a Route Table to a subnet
resource "aws_route_table_association" "demoart" {
  subnet_id = aws_subnet.demopub.id
  route_table_id = aws_route_table.demort.id
}

# Associating a Route Table to a subnet
resource "aws_route_table_association" "demoar1" {
  subnet_id = aws_subnet.demopub1.id
  route_table_id = aws_route_table.demort.id
}