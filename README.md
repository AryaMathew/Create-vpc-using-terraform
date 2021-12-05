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
      $ terraform apply`

## Result

```$ terraform apply
var.region
  Enter a value: yes


Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip.eip will be created
  + resource "aws_eip" "eip" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name"    = "Uber-eip"
          + "project" = "Uber"
        }
      + tags_all             = {
          + "Name"    = "Uber-eip"
          + "project" = "Uber"
        }
      + vpc                  = true
    }

  # aws_internet_gateway.igw will be created
  + resource "aws_internet_gateway" "igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name"    = "Uber-igw"
          + "project" = "Uber"
        }
      + tags_all = {
          + "Name"    = "Uber-igw"
          + "project" = "Uber"
        }
      + vpc_id   = (known after apply)
    }

  # aws_nat_gateway.nat will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id        = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name"    = "Uber-nat"
          + "project" = "Uber"
        }
      + tags_all             = {
          + "Name"    = "Uber-nat"
          + "project" = "Uber"
        }
    }

  # aws_route_table.private will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + carrier_gateway_id         = ""
              + cidr_block                 = "0.0.0.0/0"
              + destination_prefix_list_id = ""
              + egress_only_gateway_id     = ""
              + gateway_id                 = ""
              + instance_id                = ""
              + ipv6_cidr_block            = ""
              + local_gateway_id           = ""
              + nat_gateway_id             = (known after apply)
              + network_interface_id       = ""
              + transit_gateway_id         = ""
              + vpc_endpoint_id            = ""
              + vpc_peering_connection_id  = ""
            },
        ]
      + tags             = {
          + "Name"    = "Uber-route-private"
          + "project" = "Uber"
        }
      + tags_all         = {
          + "Name"    = "Uber-route-private"
          + "project" = "Uber"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table.public will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + carrier_gateway_id         = ""
              + cidr_block                 = "0.0.0.0/0"
              + destination_prefix_list_id = ""
              + egress_only_gateway_id     = ""
              + gateway_id                 = (known after apply)
              + instance_id                = ""
              + ipv6_cidr_block            = ""
              + local_gateway_id           = ""
              + nat_gateway_id             = ""
              + network_interface_id       = ""
              + transit_gateway_id         = ""
              + vpc_endpoint_id            = ""
              + vpc_peering_connection_id  = ""
            },
        ]
      + tags             = {
          + "Name"    = "Uber-route-public"
          + "project" = "Uber"
        }
      + tags_all         = {
          + "Name"    = "Uber-route-public"
          + "project" = "Uber"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.private1 will be created
  + resource "aws_route_table_association" "private1" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.private2 will be created
  + resource "aws_route_table_association" "private2" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.private3 will be created
  + resource "aws_route_table_association" "private3" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.public1 will be created
  + resource "aws_route_table_association" "public1" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.public2 will be created
  + resource "aws_route_table_association" "public2" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.public3 will be created
  + resource "aws_route_table_association" "public3" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_subnet.private1 will be created
  + resource "aws_subnet" "private1" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-south-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.96.0/19"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Uber-private1"
          + "project" = "Uber"
        }
      + tags_all                        = {
          + "Name"    = "Uber-private1"
          + "project" = "Uber"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_subnet.private2 will be created
  + resource "aws_subnet" "private2" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-south-1b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.128.0/19"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Uber-private2"
          + "project" = "Uber"
        }
      + tags_all                        = {
          + "Name"    = "Uber-private2"
          + "project" = "Uber"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_subnet.private3 will be created
  + resource "aws_subnet" "private3" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-south-1c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.160.0/19"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Uber-private3"
          + "project" = "Uber"
        }
      + tags_all                        = {
          + "Name"    = "Uber-private3"
          + "project" = "Uber"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_subnet.public1 will be created
  + resource "aws_subnet" "public1" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-south-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.0.0/19"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Uber-public1"
          + "project" = "Uber"
        }
      + tags_all                        = {
          + "Name"    = "Uber-public1"
          + "project" = "Uber"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_subnet.public2 will be created
  + resource "aws_subnet" "public2" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-south-1b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.32.0/19"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Uber-public2"
          + "project" = "Uber"
        }
      + tags_all                        = {
          + "Name"    = "Uber-public2"
          + "project" = "Uber"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_subnet.public3 will be created
  + resource "aws_subnet" "public3" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-south-1c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.64.0/19"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Uber-public3"
          + "project" = "Uber"
        }
      + tags_all                        = {
          + "Name"    = "Uber-public3"
          + "project" = "Uber"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_vpc.vpc will be created
  + resource "aws_vpc" "vpc" {
      + arn                            = (known after apply)
      + cidr_block                     = "172.16.0.0/16"
      + default_network_acl_id         = (known after apply)
      + default_route_table_id         = (known after apply)
      + default_security_group_id      = (known after apply)
      + dhcp_options_id                = (known after apply)
      + enable_classiclink             = (known after apply)
      + enable_classiclink_dns_support = (known after apply)
      + enable_dns_hostnames           = true
      + enable_dns_support             = true
      + id                             = (known after apply)
      + instance_tenancy               = "default"
      + ipv6_association_id            = (known after apply)
      + ipv6_cidr_block                = (known after apply)
      + main_route_table_id            = (known after apply)
      + owner_id                       = (known after apply)
      + tags                           = {
          + "Name"    = "Uber-vpc"
          + "project" = "Uber"
        }
      + tags_all                       = {
          + "Name"    = "Uber-vpc"
          + "project" = "Uber"
        }
    }

Plan: 18 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.vpc: Creating...
aws_eip.eip: Creating...
aws_eip.eip: Creation complete after 5s [id=eipalloc-02f1c7a1fa81b88e7]
aws_vpc.vpc: Still creating... [10s elapsed]
aws_vpc.vpc: Still creating... [20s elapsed]
aws_vpc.vpc: Still creating... [30s elapsed]
aws_vpc.vpc: Still creating... [40s elapsed]
aws_vpc.vpc: Creation complete after 43s [id=vpc-0e6f02f776d86dcb3]
aws_subnet.private2: Creating...
aws_subnet.public2: Creating...
aws_subnet.public1: Creating...
aws_subnet.private3: Creating...
aws_internet_gateway.igw: Creating...
aws_subnet.public3: Creating...
aws_subnet.private1: Creating...
aws_subnet.private2: Creation complete after 7s [id=subnet-0b36c13ca1804784d]
aws_subnet.private1: Creation complete after 7s [id=subnet-0108b290622f412ac]
aws_subnet.private3: Creation complete after 7s [id=subnet-0aa316ade8db20f40]
aws_internet_gateway.igw: Creation complete after 10s [id=igw-0829b087f7f13473a]
aws_route_table.public: Creating...
aws_subnet.public1: Still creating... [10s elapsed]
aws_subnet.public2: Still creating... [10s elapsed]
aws_subnet.public3: Still creating... [10s elapsed]
aws_route_table.public: Still creating... [10s elapsed]
aws_subnet.public2: Still creating... [20s elapsed]
aws_subnet.public1: Still creating... [20s elapsed]
aws_subnet.public3: Still creating... [20s elapsed]
aws_subnet.public2: Creation complete after 23s [id=subnet-0e89e215fea5adfd7]
aws_subnet.public1: Creation complete after 23s [id=subnet-0cbb979cec46bb752]
aws_nat_gateway.nat: Creating...
aws_subnet.public3: Creation complete after 25s [id=subnet-0949b967db9cc81e7]
aws_route_table.public: Creation complete after 15s [id=rtb-0cc3699148abd87ce]
aws_route_table_association.public3: Creating...
aws_route_table_association.public2: Creating...
aws_route_table_association.public1: Creating...
aws_nat_gateway.nat: Still creating... [10s elapsed]
aws_route_table_association.public3: Creation complete after 8s [id=rtbassoc-080971fb0cd76ab45]
aws_route_table_association.public1: Creation complete after 8s [id=rtbassoc-0aaf1330f45e81a88]
aws_route_table_association.public2: Creation complete after 8s [id=rtbassoc-0dd0b2fb76ee73efd]
aws_nat_gateway.nat: Still creating... [20s elapsed]
aws_nat_gateway.nat: Still creating... [30s elapsed]
aws_nat_gateway.nat: Still creating... [40s elapsed]
aws_nat_gateway.nat: Still creating... [50s elapsed]
aws_nat_gateway.nat: Still creating... [1m0s elapsed]
aws_nat_gateway.nat: Still creating... [1m10s elapsed]
aws_nat_gateway.nat: Still creating... [1m20s elapsed]
aws_nat_gateway.nat: Still creating... [1m30s elapsed]
aws_nat_gateway.nat: Still creating... [1m40s elapsed]
aws_nat_gateway.nat: Still creating... [1m50s elapsed]
aws_nat_gateway.nat: Still creating... [2m0s elapsed]
aws_nat_gateway.nat: Creation complete after 2m3s [id=nat-00fbdbabe3f4673bc]
aws_route_table.private: Creating...
aws_route_table.private: Still creating... [10s elapsed]
aws_route_table.private: Creation complete after 15s [id=rtb-0d49386b347bcac3d]
aws_route_table_association.private3: Creating...
aws_route_table_association.private2: Creating...
aws_route_table_association.private1: Creating...
aws_route_table_association.private3: Creation complete after 7s [id=rtbassoc-0b3adad5ad6eb7f44]
aws_route_table_association.private2: Creation complete after 7s [id=rtbassoc-09d39f7fa40bb6b17]
aws_route_table_association.private1: Creation complete after 7s [id=rtbassoc-0e74c30271f5fdd05]

Apply complete! Resources: 18 added, 0 changed, 0 destroyed.`
