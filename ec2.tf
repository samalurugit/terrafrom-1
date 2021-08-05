resource "aws_instance" "myweb" {
  count = 3
  ami           = var.instance-ami
  instance_type = var.instance-type
  subnet_id = aws_subnet.public-sub-1.id
  vpc_security_group_ids = [aws_security_group.sg-1.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.key.id
  availability_zone = "us-east-2a"

  tags = {
    Name = "linux-server${count.index+1}"
    Env = "prod"
    Owner = "pavan"
  }
}

