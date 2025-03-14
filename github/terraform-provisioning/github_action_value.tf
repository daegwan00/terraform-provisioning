# resource "github_actions_variable" "example" {
#   repository       = "terraform-provisioning"
#   variable_name    = "example_variable_name"
#   value            = "example_variable_value"
# }

# # 만약 tf init이 안될 경우, ~./zshrc에서, gitub_token을 환경변수로 지정해줘야함 (로컬에서)