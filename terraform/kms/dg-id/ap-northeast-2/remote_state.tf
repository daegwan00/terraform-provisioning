locals {
  remote_iam = data.terraform_remote_state.iam.outputs
}

data "terraform_remote_state" "iam" {
    backend = "s3"
    config = merge(var.remote_state.iam.dg-id)   # local에서 동작할떈 assume_role이 없기떄문 참조
    # config = merge(var.remote_state.iam.dg-id, {"assume_role" = {"role_arn" = var.assume_role_arn}})
    # Pr을 날릴떄는 atlaintis가 role을 assume 해야하기때문에 위에 코드로 git add하고 pr날려야함
}