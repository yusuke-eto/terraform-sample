resource "aws_iam_instance_profile" "ecs_instance_profile" {
  # IAM インスタンスプロファイルの名前を指定する
  name = "ecs-instance-profile"
  # IAM インスタンス プロファイルに割り当てるロールを指定する
  role = aws_iam_role.ecs_instance_role.name
}
