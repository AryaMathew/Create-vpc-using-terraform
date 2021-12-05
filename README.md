# Create-vpc-using-terraform
Vpc creating using terraform
## Objective
It tells a file using [Data Sources](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/regions), [cidrsubnet](https://www.terraform.io/docs/language/functions/cidrsubnet.html) to use with Terraform to create a VPC

## Prerequisites
- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started)
- [AWS Access Key and Secret Key](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)

## Usage
- Installation of [git](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started)
- Clone repo

`$ git clone https://github.com/AryaMathew/Create-vpc-using-terraform.git`

- Go to the project directory where the files are to be installed and follow the below steps
`$ cd Create-vpc-using-terraform/`

- The 'terraform init' command is used to initialize a working directory containing Terraform configuration files.
`$ terraform init`

- Then, the 'terraform plan' command to create an execution plan and then use 'terraform apply' to execute the plan

```$ terraform validate
$ terraform apply


