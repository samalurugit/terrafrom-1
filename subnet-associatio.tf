resource "aws_route_table_association" "public-ass-1" {
  subnet_id      = aws_subnet.public-sub-1.id
  route_table_id = aws_route_table.public-1.id
}

resource "aws_route_table_association" "private-ass-1" {
  subnet_id      = aws_subnet.private-sub-1.id
  route_table_id = aws_route_table.private-1.id
}