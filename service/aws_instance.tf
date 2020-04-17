resource "aws_instance" "sample" {
  # EC2インスタンスを作成するマシンイメージを指定する
  ami = "ami-05b296a384694dfa4"
  # EC2のインスタンスタイプを指定
  instance_type = "t2.small"
  # Webコンソールでインスタンスの詳細を表示するかを指定できる
  monitoring = true
  # IAM instance_profile を指定
  iam_instance_profile = data.terraform_remote_state.aws_iam.outputs.ecs_instance_profile_name
  # EC2インスタンスを配置するsubnet の id
  subnet_id = data.terraform_remote_state.vpc.outputs.public_subnet_1_id
  # EC2インスタンスがローンチするときに実行されるファイルを指定
  user_data = data.template_file.user_data.rendered
  # VPC内でのpublicなIPアドレスを関連づけるかを指定する
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.instance.id,
  ]

  root_block_device {
    volume_size = "20"
    volume_type = "gp2"
  }
}
