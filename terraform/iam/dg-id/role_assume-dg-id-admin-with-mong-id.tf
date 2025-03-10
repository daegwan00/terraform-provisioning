
# # dg-id administrator  dg-id -> mong-user

# resource "aws_iam_role" "assume_dg_id_admin" { # mong이란 사용자 역할 생성
#   name                 = "assume-mong-id-admin"
#   path                 = "/"
#   max_session_duration = "43200"
#   assume_role_policy   = data.aws_iam_policy_document.assume_mong_id_admin_assume_role.json
# }

# data "aws_iam_policy_document" "assume_mong_id_admin_assume_role" {
#   statement {
#     actions = ["sts:AssumeRole"]
#     effect  = "Allow"

#     principals {
#       type = "AWS"
#       identifiers = [
#         "arn:aws:iam::${var.account_id.id}:root", # 루트 사용자 권한으로 
#       ]
#     }
#   }
# }
# # ~/ChangeRole.sh 2

# resource "aws_iam_role_policy" "assume_mong_id_admin_passrole" { # passrole 생성
#   name = "assume-mong-id-admin-passrole"
#   role = aws_iam_role.assume_mong_id_admin.id

#   policy = data.aws_iam_policy_document.assume_mong_id_admin_pass_role.json
# }

# data "aws_iam_policy_document" "assume_mong_id_admin_pass_role" {
#   statement {
#     actions = ["iam:PassRole"]
#     effect  = "Allow"

#     resources = ["*"]
#   }
# }

# resource "aws_iam_role_policy_attachment" "assume_mong_id_admin" { # 정책 연결
#   role       = aws_iam_role.assume_mong_id_admin.id
#   policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
# }


