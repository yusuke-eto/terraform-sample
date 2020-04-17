resource "aws_vpc" "vpc" {
  # 基点となるIPアドレスの設定
  cidr_block = "10.0.0.0/16"
  # VPCで立ち上げるインスタンスがハードウェアを占有するかどうか
  instance_tenancy = "default"
  # VPCに対してDNS解決がサポートされるか
  enable_dns_support = true
  # VPC内で起動するインスタンス がパブリックなDNSホスト名を取得するかどうか
  enable_dns_hostnames = true
}
