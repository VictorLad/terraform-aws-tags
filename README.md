# AWS Tags Terraform module

Terraform module which creates a sample of tags based on input parameters. 

## Usage

```hcl
module "bucket_tags" {
  source = "VictorLad/tags/aws"

  config      = module.config
  application = "terraform-remote-states"
  component   = "bucket"
}
```

## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application | Name of the application. | `string` | n/a | yes |
| component | Name of the component. | `string` | n/a | yes |
| config | Config module. | <pre>object({<br>    env_type = string<br>    env_name = string<br><br>    values = object({<br>      project_name     = string<br>      business_unit    = string<br>      design_authority = string<br>      master_name      = string<br>    })<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| tags | The map of tags to apply to resources. |