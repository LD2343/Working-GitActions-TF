resource "aws_eip" "tokyo_nat_eip" {
  vpc = true

  tags = {
    Name = "tokyo_nat_eip"
  }
}

resource "aws_nat_gateway" "tokyo_nat" {
  allocation_id = aws_eip.tokyo_nat_eip.id
  subnet_id     = aws_subnet.public-ap-northeast-1a.id

  tags = {
    Name = "tokyo_nat"
  }

  depends_on = [aws_internet_gateway.tokyo_igw]
}
