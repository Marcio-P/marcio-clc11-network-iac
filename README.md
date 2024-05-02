## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.45.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.ip_nat_1a](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/eip) | resource |
| [aws_eip.ip_nat_1c](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/eip) | resource |
| [aws_internet_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.natgateway-1a](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.natgateway-1c](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/nat_gateway) | resource |
| [aws_route_table.private_rt_1a](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/route_table) | resource |
| [aws_route_table.private_rt_1c](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/route_table) | resource |
| [aws_route_table.public_rt](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/route_table) | resource |
| [aws_route_table_association.private_1a](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_1c](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public-1a](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public-1c](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/route_table_association) | resource |
| [aws_subnet.sub_net_priv_1a](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/subnet) | resource |
| [aws_subnet.sub_net_priv_1c](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/subnet) | resource |
| [aws_subnet.sub_net_pub_1a](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/subnet) | resource |
| [aws_subnet.sub_net_pub_1c](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/subnet) | resource |
| [aws_vpc.vpc_iac_clc11](https://registry.terraform.io/providers/hashicorp/aws/5.45.0/docs/resources/vpc) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
