module "sops_dg-id" {
  source = "../_modules/sops"
  name   = "dg-id"
  allowed_arns_for_common = [
    "arn:aws:iam::${var.account_id.id}:root",
    # "arn:aws:iam::${var.account_id.id}:role/atlantis-ecs_task_execution"
  ]
  allowed_arns_for_secure = [
    "arn:aws:iam::${var.account_id.id}:root",
    # "arn:aws:iam::${var.account_id.id}:role/atlantis-ecs_task_execution"
  ]
}

output "sops_dg_id_common_role_arn" {
  value = module.sops_dg-id.common_role_arn
}

output "sops_dg_id_secure_role_arn" {
  value = module.sops_dg-id.secure_role_arn
}
