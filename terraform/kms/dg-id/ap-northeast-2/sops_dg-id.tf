module "sops_dg_id" {
  source       = "../../_modules/sops"
  common_alias = "sops-dg-id"
  common_aliow_arns = {
    manage = [
      "arn:aws:iam::${var.account_id.id}:root"
    ]
    use = [
      local.remote_iam.sops_dg_id_common_role_arn
    ]
    delete = ["arn:aws:iam::${var.account_id.id}:root"] # account안에 어떠한 iam도 삭제하면 안되기때문에 root로 지정
  }
  secure_alias = "secure_sops-dg-id"
  secure_aliow_arns = {
    manage = ["arn:aws:iam::${var.account_id.id}:root"]
    use = [
      local.remote_iam.sops_dg_id_secure_role_arn
    ]
    delete = ["arn:aws:iam::${var.account_id.id}:root"]
  }
}
