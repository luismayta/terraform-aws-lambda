<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.20, < 2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=3.2.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >=0.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | n/a |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=3.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_label"></a> [label](#module\_label) | hadenlabs/tags/null | 0.1.1 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [archive_file.this](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_code_location"></a> [code\_location](#input\_code\_location) | Folder code | `string` | n/a | yes |
| <a name="input_environments"></a> [environments](#input\_environments) | Environment variables for lambda function | `map(any)` | `{}` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | The handler name of the lambda (a function defined in your lambda) | `string` | n/a | yes |
| <a name="input_memory"></a> [memory](#input\_memory) | memory ram for lambda | `number` | `128` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the lambda to create, which also defines (i) the archive name (.zip), (ii) the file name, and (iii) the function name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace of project | `string` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | IAM role attached to the Lambda Function (ARN) | `string` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime of the lambda to create | `string` | `"nodejs12.x"` | no |
| <a name="input_sg_ids"></a> [sg\_ids](#input\_sg\_ids) | Security groups | `list(string)` | `[]` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | The name of stage (dev,staging,prod) | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Subnets | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags for add resources | `map(any)` | `{}` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | timeout in minutes | `number` | `3` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_name"></a> [function\_name](#output\_function\_name) | n/a |
| <a name="output_instance"></a> [instance](#output\_instance) | output instance repository |
| <a name="output_invoke_arn"></a> [invoke\_arn](#output\_invoke\_arn) | n/a |
| <a name="output_lambda_arn"></a> [lambda\_arn](#output\_lambda\_arn) | ARN of function lambda |
| <a name="output_name"></a> [name](#output\_name) | name aws lambda |
<!-- END_TF_DOCS -->