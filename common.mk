TERRAFORM_VERSION=0.10.7
TEMP_DIR=$(shell pwd)/tmp

common_terraform_binary:
	curl https://releases.hashicorp.com/terraform/0.10.7/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
	unzip -o /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d ${TEMP_DIR}/
	chmod +x ${TEMP_DIR}/terraform

common_jq_binary:
	curl -L https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 -o ${TEMP_DIR}/jq
	chmod +x ${TEMP_DIR}/jq

common_aws_cli:
	pip install --user awscli
