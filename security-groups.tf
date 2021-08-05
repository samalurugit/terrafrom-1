resource "aws_security_group" "sg-1" {
  name        = "first-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      =  aws_vpc.demo-vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #cidr_blocks      = [aws_vpc.IBM-VPC.cidr_block]
      }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
 
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 8
    to_port          = 0
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
    #cidr_blocks      = [aws_vpc.IBM-VPC.cidr_block]
      }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
 
  }


  tags = {
    Name = "demo-vpc-sg"
  }
}
