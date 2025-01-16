#These are   for  public

resource "aws_subnet" "public-ap-northeast-1a" {
  vpc_id                  = aws_vpc.tokyovpc.id
  cidr_block              = "10.130.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1a"
  }
}

resource "aws_subnet" "public-ap-northeast-1c" {
  vpc_id                  = aws_vpc.tokyovpc.id
  cidr_block              = "10.130.3.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1c"
  }
}


resource "aws_subnet" "public-ap-northeast-1d" {
  vpc_id                  = aws_vpc.tokyovpc.id
  cidr_block              = "10.130.4.0/24"
  availability_zone       = "ap-northeast-1d"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1d"
  }
}

#these are for private
resource "aws_subnet" "private-ap-northeast-1a" {
  vpc_id            = aws_vpc.tokyovpc.id
  cidr_block        = "10.130.11.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name    = "private-ap-northeast-1a"
  }
}

resource "aws_subnet" "private-ap-northeast-1c" {
  vpc_id            = aws_vpc.tokyovpc.id
  cidr_block        = "10.130.13.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name    = "private-ap-northeast-1c"
  }
}


resource "aws_subnet" "private-ap-northeast-1d" {
  vpc_id            = aws_vpc.tokyovpc.id
  cidr_block        = "10.130.14.0/24"
  availability_zone = "ap-northeast-1d"

  tags = {
    Name    = "private-ap-northeast-1d"
  }
}
