<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pre_value"></a> [pre\_value](#input\_pre\_value) | Pre value for helm, eg: container.image | `string` | `""` | no |
| <a name="input_repo_regex"></a> [repo\_regex](#input\_repo\_regex) | Repo regex to identifier different part of the string | `string` | `"^(?:(?P<url>[^/]+))?(?:/(?P<image>[^:]*))??(?::(?P<tag>[^:]*))"` | no |
| <a name="input_repo_url"></a> [repo\_url](#input\_repo\_url) | Repo url of container image | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Type of helm config | `string` | `"default"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_set_values"></a> [set\_values](#output\_set\_values) | n/a |
<!-- END_TF_DOCS -->