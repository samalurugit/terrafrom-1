resource "aws_subnet" "public-sub-1" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = var.sub_1
  availability_zone = "us-east-2a"

  tags = {
    Name = "public-1"
  }
}

resource "aws_subnet" "private-sub-1" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = var.sub_2
  availability_zone = "us-east-2b"

  tags = {
    Name = "private-1"
  }
}