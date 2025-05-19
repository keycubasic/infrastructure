yc init --federation-id=bpfpfctkh7focc85u9sq

yc config set cloud-id b1g3jddf4nv5e9okle7p
yc config set folder-id b1g4n3h4dcqdt2vtjlsv

export YC_TOKEN=$(yc iam create-token)
export YC_CLOUD_ID=$(yc config get cloud-id)
export YC_FOLDER_ID=$(yc config get folder-id)



terraform validate

terraform fmt

terraform plan

terraform apply

terraform destroy