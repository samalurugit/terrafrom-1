resource "aws_route_table" "public-1" {
  vpc_id = aws_vpc.demo-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-igw.id
  }
    tags = {
        Name = "route-public"
    }
}

resource "aws_route_table" "private-1" {
  vpc_id = aws_vpc.demo-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-igw.id
  }
    tags = {
        Name = "route-private"
    }
}