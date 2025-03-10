resource "aws_iam_role" "common" { # 일반적인 SOPS 작업을 위한 IAM 역할을 생성
  name = "${var.name}-sops"
  path = "/"

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : var.allowed_arns_for_common
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "common-passrole" { # common 역할에 PassRole 권한을 부여하는 인라인 정책 생성
  name = "${var.name}-sops-passrole"
  role = aws_iam_role.common.id

  policy = jsonencode({
    "Statement" : [
      {
        "Sid" : "AllowIAMPassRole",
        "Action" : [
          "iam:PassRole"
        ],
        "Effect" : "Allow",
        "Resource" : "*"
      }
    ]
  })
}

resource "aws_iam_role" "secure" { # 보안이 강화된 SOPS 작업을 위한 IAM 역할을 생성
  name = "${var.name}-secure-sops"
  path = "/"

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : var.allowed_arns_for_secure
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "secure-passrole" { # secure 역할에 PassRole 권한을 부여하는 인라인 정책 생성
  name = "${var.name}-secure-sops-passrole"
  role = aws_iam_role.secure.id

  policy = jsonencode({
    "Statement" : [
      {
        "Sid" : "AllowIAMPassRole",
        "Action" : [
          "iam:PassRole"
        ],
        "Effect" : "Allow",
        "Resource" : "*"
      }
    ]
  })
}
