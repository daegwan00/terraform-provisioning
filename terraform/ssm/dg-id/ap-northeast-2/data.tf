data "sops_file" "secrets_value" {
  source_file = "secrets.sops.yaml"
}  # 실제 sops가 적용된 yaml을 읽어서 내부적으로 변수로 쓸 수 있도록 데이터화
# json 타입으로 변경이 됨