resource "aws_internet_gateway" "internet_gateway" {
  # インターネットに接続するVPCのid
  vpc_id = aws_vpc.vpc.id
}
