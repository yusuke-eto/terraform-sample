resource "aws_route" "public_route" {
  # 登録するル＝ティングテーブルのidを指定する
  route_table_id = aws_route_table.public_route_table.id
  # 宛先のcidrブロックを指定する
  destination_cidr_block = "0.0.0.0/0"
  # インターネットゲートウェイのidを指定する
  gateway_id = aws_internet_gateway.internet_gateway.id
}
