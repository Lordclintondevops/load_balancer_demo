# Creating our Public Subent
resource "aws_subnet" "demopub" {
    vpc_id = aws_vpc.demovpc.id

    cidr_block = "112.124.0.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true

    tags = {
      Name = "demopub"
    }
  
}

# Creating our Public Subent 1
resource "aws_subnet" "demopub1" {
    vpc_id = aws_vpc.demovpc.id

    cidr_block = "112.124.1.0/24"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = true

    tags = {
      Name = "demopub"
    }
  
}