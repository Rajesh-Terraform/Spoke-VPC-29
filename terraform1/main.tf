resource "aws_vpc" "spoke" {

  cidr_block = "10.1.0.0/16"

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "Spoke-VPC"
  }
}


resource "aws_subnet" "private1" {

  vpc_id = aws_vpc.spoke.id

  cidr_block = "10.1.0.0/24"

  availability_zone = "ap-south-1a"

  tags = {
    Name = "Private-Subnet-1"
  }
}




resource "aws_route_table_association" "private1" {

  subnet_id = aws_subnet.private1.id

  route_table_id = aws_route_table.private.id
}

