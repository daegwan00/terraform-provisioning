resource "aws_iam_openid_connect_provider" "gitaction_idp" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [   # 깃 허브 인증할때 sts를 통해 인증을 하게 됨
    "sts.amazonaws.com"
  ]

  thumbprint_list = ["ffffffffffffffffffffffffffffffffffffffff"]
}
